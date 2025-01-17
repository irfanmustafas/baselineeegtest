%% exp name
expName(1).name = 'Experiment X6 Speed Control';
expName(2).name = 'Experiment X2 Traffic Complexity';
expName(3).name = 'Experiment XB Baseline Driving';
expName(4).name = 'Experiment XC Calibration Driving';
expName(5).name = 'X3 Baseline Guard Duty';
expName(6).name = 'X4 Advanced Guard Duty';
expName(7).name = 'X2 RSVP Expertise';
expName(8).name = 'X1 Baseline RSVP';
expName(9).name = 'Experiment X7 Auditory Cueing';
expName(10).name = 'Experiment X8 Mind Wandering';

%% chn size
expName(1).nbchan = 64;
expName(2).nbchan = 64;
expName(3).nbchan = 64;
expName(4).nbchan = 64;
expName(5).nbchan = 256;
expName(6).nbchan = 256;
expName(7).nbchan = 256;
expName(8).nbchan = 256;
expName(9).nbchan = 64;
expName(10).nbchan = 64;

%% lbl behavior
expName(1).label(1).behavior = 'On task fatigue: high/medium/low';
expName(2).label(1).behavior = 'On task fatigue: high/medium/low';
expName(3).label(1).behavior = 'On task fatigue: high/medium/low';
expName(4).label(1).behavior = 'On task fatigue: high/medium/low';

expName(5).label(1).behavior = 'Detection of non-time-locked target/non-target image ID';
expName(6).label(1).behavior = 'Detection of non-time-locked target/non-target image ID';
expName(7).label(1).behavior = 'Detection of time-locked target/non-target image';
expName(8).label(1).behavior = 'Detection of time-locked target/non-target image';

expName(5).label(2).behavior = 'Hit/miss detection of image ID';
expName(6).label(2).behavior = 'Hit/miss detection of image ID';
expName(7).label(2).behavior = 'Hit/miss detection of image';
expName(8).label(2).behavior = 'Hit/miss detection of image';

expName(5).label(3).behavior = 'Learning fatigue for image ID recognition: high/medium/low';
expName(6).label(3).behavior = 'Learning fatigue for image ID recognition: high/medium/low';
expName(7).label(3).behavior = 'Learning fatigue for image recognition: high/medium/low';
expName(8).label(3).behavior = 'Learning fatigue for image recognition: high/medium/low';

expName(9).label(1).behavior = '';
expName(10).label(1).behavior = '';

%% lbl metric.event{n}  
% -- replace with correct event tags
% -- event{1} is the event that will extract epoch based on its occur time
% -- event{2} is the event that will extract epoch based on some threshold
expName(1).label(1).metric.event{1} = {'1111','1121'};
expName(2).label(1).metric.event{1} = {'1111','1121'};
expName(3).label(1).metric.event{1} = {'1111','1121'};
expName(4).label(1).metric.event{1} = {'1111','1121'};

expName(1).label(1).metric.event{2} = {'4311'};
expName(2).label(1).metric.event{2} = {'4311'};
expName(3).label(1).metric.event{2} = {'4311'};
expName(4).label(1).metric.event{2} = {'4311'};
%==========================================================================
expName(5).label(1).metric.event{1} = {'2110', '2120'};   % 'Allow press', 'Deny press'
expName(6).label(1).metric.event{1} = {'2110', '2120'};   % 'Allow press', 'Deny press'
expName(7).label(1).metric.event{1} = {'1311', '1321'};  % 'Image onset': Target, non-target
expName(8).label(1).metric.event{1} = {'1311', '1321'};  % 'Image onset': Target, non-target

expName(5).label(1).metric.event{2} = {'1311', '1321', '1331', '1341', '1351', '1361'};   % 'Image ID onset': Target, non-target, non-target, etc...
expName(6).label(1).metric.event{2} = {'1311', '1321', '1331', '1341', '1351', '1361'};   % 'Image ID onset': Target, non-target, non-target, etc...
expName(7).label(1).metric.event{2} = {'2121', '2111'};   % 'left button press', 'right button press'
expName(8).label(1).metric.event{2} = {'2121', '2111'};   % 'left button press', 'right button press'
%==========================================================================
expName(5).label(2).metric.event{1} = {'2110', '2120'};   % 'Allow press', 'Deny press'
expName(6).label(2).metric.event{1} = {'2110', '2120'};   % 'Allow press', 'Deny press'
expName(7).label(2).metric.event{1} = {'1311', '1321'};  % 'Image onset': Target, non-target
expName(8).label(2).metric.event{1} = {'1311', '1321'};  % 'Image onset': Target, non-target

expName(5).label(2).metric.event{2} = {'1311', '1321', '1331', '1341', '1351', '1361'};   % 'Image ID onset': Target, non-target, non-target, etc...
expName(6).label(2).metric.event{2} = {'1311', '1321', '1331', '1341', '1351', '1361'};   % 'Image ID onset': Target, non-target, non-target, etc...
expName(7).label(2).metric.event{2} = {'2121', '2111'};   % 'left button press', 'right button press'
expName(8).label(2).metric.event{2} = {'2121', '2111'};   % 'left button press', 'right button press'
%==========================================================================
expName(5).label(3).metric.event{1} = {'1311', '1321', '1331', '1341', '1351', '1361'};
expName(6).label(3).metric.event{1} = {'1311', '1321', '1331', '1341', '1351', '1361'};
expName(7).label(3).metric.event{1} = {'1311'}; % 3	Present Image	1	Target	1	Onset;
expName(8).label(3).metric.event{1} = {'1311'}; %                   

expName(5).label(3).metric.event{2} = {'2110', '2120'};
expName(6).label(3).metric.event{2} = {'2110', '2120'};
expName(7).label(3).metric.event{2} = {'2111', '2121'}; 
expName(8).label(3).metric.event{2} = {'2111', '2121'}; 
%==========================================================================
expName(9).label(1).metric.event{1} = {''};
expName(10).label(1).metric.event{1} = {''};

expName(9).label(1).metric.event{2} = {''};
expName(10).label(1).metric.event{2} = {''};

%% lbl etime -- this must be a range
expName(1).label(1).etime = [-5, 0.1];
expName(2).label(1).etime = [-5, 0.1];
expName(3).label(1).etime = [-5, 0.1];
expName(4).label(1).etime = [-5, 0.1];

expName(5).label(1).etime = [-5, 0.1];
expName(6).label(1).etime = [-5, 0.1];
expName(7).label(1).etime = [-0.1, 1];
expName(8).label(1).etime = [-0.1, 1];

expName(5).label(2).etime = [-5, 0.1];
expName(6).label(2).etime = [-5, 0.1];
expName(7).label(2).etime = [-0.1, 1];
expName(8).label(2).etime = [-0.1, 1];

expName(5).label(3).etime = [-5, 0.1];    % a small offset to grab events
expName(6).label(3).etime = [-5, 0.1];
expName(7).label(3).etime = [-1, 0.1];
expName(8).label(3).etime = [-1, 0.1];

expName(9).label(1).etime = [];
expName(10).label(1).etime = [];
