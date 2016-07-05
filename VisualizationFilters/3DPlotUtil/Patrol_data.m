% First Look at the patrol data. Huanglab, utsa


% JIA THE EEGLAB AND THE TX16 DATA FOLDERS SHOULD BE INSIDE 
% THE CURRENT DIRECTORY WHEREVER THIS M FILE IS LOCATED

close all
clear all
clc


addpath(genpath(pwd));            % Add to the path all subdirectories
eeglab;                           % Load EEGLAB
close all;
clc

% Load current dataset, as example, the first mision for the first subject
current_dataset = pop_loadset('TX16EEGdata.filt.001.01.1.set');
current_dataset.splinefile = 'TX16EEGdata.filt.001.01.1.spl';
spl = 'TX16EEGdata.filt.001.01.1.spl';

% Get important information about the dataset
current_signal = current_dataset.data;          % EEG channel-points
number_of_channels = current_dataset.nbchan;    % Number of channels
channel_locs = zeros(3,number_of_channels);     % XYZ Channel locations
[~,events_quantity] = size(current_dataset.event);
event_location = zeros(2,events_quantity+1);      % Points and time locs for events
for i=1:events_quantity
    event_location(1,i) = current_dataset.event(i).latency;
    event_location(2,i) = (current_dataset.event(i).latency/...
        current_dataset.srate)/current_dataset.nbchan;
end
event_location(1,events_quantity+1) = current_dataset.pnts;
event_location(2,events_quantity+1) = current_dataset.pnts...
    /current_dataset.srate/60;
%% Display basic information and plot the dataset
disp('                                                    ');
disp('----------------------------------');
temp_text1 = char([ 'EEG source: ' current_dataset.setname ]);
disp(temp_text1);           % Type of EEG data (source)
temp_text2 = char([ 'Dataset Filename: ' current_dataset.filename ]);
disp(temp_text2);           % Filename         
temp_text3 = char([ 'Number of Channels : ' int2str(current_dataset.nbchan) ]);
disp(temp_text3);           % Number of Channels
temp_text4 = char([ 'Sampling rate : ' int2str(current_dataset.srate) ]);
disp(temp_text4);           % Number of Channels
disp('Preprocessing Information :');
disp(current_dataset.desc);
eegplot(current_signal);    % Plot all channels with EEGLAB function



%% Plot the channel locations on the 3D model reference

% Prepare amplitude color-scale
max_amplitude = max(max(current_signal));
min_amplitude = min(min(current_signal));
amp_scale = min_amplitude:max_amplitude;
[~,number_of_amp] = size(amp_scale);
amp_colors = colormap(jet(number_of_amp)); % RGB values for every amplitude
channel_colors = zeros(number_of_channels,3);
close all


% Prepare the event's thresholds
x_barrier = zeros(events_quantity+1,events_quantity+1);
y_barrier = zeros(events_quantity+1,events_quantity+1);
p_barrier = min_amplitude:(number_of_amp/8):max_amplitude;
p_barrier(events_quantity+1) = max_amplitude;

figure
% Analyse and plot every point for the signal
for i=1:current_dataset.pnts
 
    temp_max = max(current_signal(:,i));
    temp_min = min(current_signal(:,1));
    temp_ave = sum(current_signal(:,i))/number_of_channels;
    
end  
hold off

% Plot the event's window
total_average = zeros(1,current_dataset.pnts);
total_average(1:current_dataset.pnts) = sum(...
    current_signal(:,1:current_dataset.pnts))/current_dataset.nbchan;
for k=1:events_quantity+1
    x_barrier(1:events_quantity+1,k) = event_location(2,k);
    y_barrier(1:events_quantity+1,k) = p_barrier;
    plot(x_barrier(1:events_quantity+1,k),y_barrier(1:events_quantity+1,k),...
        'red','LineWidth',3);
    aa = text('Position',[event_location(2,k)-0.45 max(p_barrier)+10],'String',...
        (['E' int2str(k-1)]));
    set(aa, 'Fontsize', 18);
    hold on
end
plot(((1:current_dataset.pnts)./current_dataset.srate)./60,total_average,'LineWidth',3);
grid on;
hold off
axis off

% signals for "low activity"
a1_signal = current_signal(:,1:event_location(1,2));
[~,a1size] = size(a1_signal);
temp = event_location(1,events_quantity);
temp2 = event_location(1,events_quantity+1);

a2_signal = current_signal(:,temp:temp2);
[~,a2size] = size(a2_signal);

% signals for "low activity"
temp = event_location(1,2);
temp2 = event_location(1,2)+a1size;
b1_signal = current_signal(:,temp:temp2);

temp = event_location(1,events_quantity) - a2size;
temp2 = event_location(1,events_quantity);
b2_signal = current_signal(:,temp:temp2);

% get the mean of amplitudes
a1mean = sum(a1_signal(1:current_dataset.nbchan,:))./current_dataset.nbchan;
b1mean = sum(b1_signal(1:current_dataset.nbchan,:))./current_dataset.nbchan;
a2mean = sum(a2_signal(1:current_dataset.nbchan,:))./current_dataset.nbchan;
b2mean = sum(b2_signal(1:current_dataset.nbchan,:))./current_dataset.nbchan;

a1mean2 = zeros(1,a1size);
b1mean2 = zeros(1,a1size);
a2mean2 = zeros(1,a2size);
b2mean2 = zeros(1,a2size);

for m=1:current_dataset.nbchan
    
    a1mean2(m) = sum(a1_signal(m,:))./current_dataset.nbchan;
    b1mean2(m) = sum(b1_signal(m,:))./current_dataset.nbchan;
    a2mean2(m) = sum(a2_signal(m,:))./current_dataset.nbchan;
    b2mean2(m) = sum(b2_signal(m,:))./current_dataset.nbchan;
end

% plot the comparison
figure, subplot(1,2,1)
plot(a1mean);
hold on
plot(b1mean,'red');
hold off

subplot(1,2,2)
plot(a2mean);
hold on
plot(b2mean,'red');
hold off

% plot the comparison
figure, subplot(1,2,1)
hist(a1mean2);
hold on
hist(b1mean2);
hold off

subplot(1,2,2)
hist(a2mean2);
hold on
hist(b2mean2);
hold off

