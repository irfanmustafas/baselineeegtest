function [ configs ] = config_epoch_extract( configs )

chanlocs64 = [];
chanlocs256 = [];
montageIdx256to64 = [];
channelIdx64to30 = [];

load('chanlocs_bk.mat');
configs.chanlocs64 = chanlocs64;
configs.chanlocs256 = chanlocs256;
configs.chanlocs256to64 = montageIdx256to64;
configs.chanlocs64to30 = channelIdx64to30;

configs.DATESTRING = datestr(now, 'mm.dd.yyyy.HH.MM.SS');   % get the unique id for storing data

% set this location for bad window detection
configs.windStub = 'I:/BadWindowsBCIT/';
% set the location for raw eeg data
configs.file_path = 'I:\Level2_256Hz\';
% set the save location for processed eeg data
configs.save_path = 'I:\Level2_256Hz_Epoch\';

configs.ismultithread = true;
configs.epoch_postfix = '_epoched';
configs.epoch_type = 'Ali';

end

