% Run Script for rearrangin files
% Written by Qiong Wang at University of Pennsylvania
% 02/26/2014

%% Clear up
clear all;
close all;
clc;

%% Parameters
% Flags
verbose  = false;                             % Whether to show the details

% Params
camNum = 10;
imgSz  = [3840, 2160];

%% Path
scriptDir = fileparts(mfilename('fullpath'));
dataDir   = '/media/Gabriella/GoPro-20140217-calib_data/distort_omni/images/';
calibDir  = '/media/Gabriella/GoPro-20140217-calib_data/distort_omni/results/';
if ~exist(calibDir, 'dir')
    mkdir(calibDir);
end
addpath(genpath(scriptDir));

%% Preprocessing
start_up;        % Set the environment in Linux
set_up_global;   % Prepare workspace variables

%% Omni-directional Calibration
for camIdx = 1 : 1%camNum
    % Read Files
    camDir = fullfile(dataDir, ['camera', num2str(camIdx, '%02d')]);
    data_calib(calib_data, camIdx, camDir);
    
%     % Extract Corners
%     click_calib(calib_data, imgSz);
%     
%     % Calibration
%     calibration(calib_data);
%     
%     % Find center
%     findcenter(calib_data);
%     
%     % Calibration Refinement
%     calibration(calib_data);
end