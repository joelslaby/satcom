% Transmit

Fs_tx = 1e6; % Hz
Ts_tx = 1/Fs_tx; % s
R = 35768; % km
fc_tx = 83.5e9/1e6; %MHz
G_ant_tx = 30; % dB
bitRate = 100e6;
bitsPerFrame = 300;

%Reissian Channel
pathDelays = [1e-6, 2e-6, 4e-6, 8e-6];
AverageGains = [0, -6, -12, -18];
LOSDopplerShift = 0;
Kfactor = 10;
% Receive

G_ant_rx = 40; % dB
Fs_rx = 1e6;
Ts_rx = 1/Fs_rx;
fc_rx = 73.5e9/1e6; % MHz

v = 3336.8; %m/s

lambda_tx = 3e8/(fc_tx*1e6);
fd = v/lambda_tx;
maxDoppler = fd/(fc_tx*1e6);