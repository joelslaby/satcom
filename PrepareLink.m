% Transmit
BW = 5e9;
k = 1.38064852e-23;
Fs_tx = 1e6; % Hz
Ts_tx = 1/Fs_tx; % s
R = 35768; % km
fc_tx = 83.5e9/1e6; %MHz
G_ant_tx = 30; % dB
bitRate = 100e6;
bitsPerFrame = 300;
attn_rain = 2; % dB
attn_atm = 1.18;% See https://propagation.ece.gatech.edu/ECE6390/project/Fall2012/Team09/Team9GeoSatTech_website_FINAL/SatCom%20website/atmosphericAttenuation.html
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
N_ant_rx = k*273*BW; 
N_mix_rx = k*300*BW;
G_mix_rx = 10^(-8/10);
G_hpa_rx = 10^(20/10);
G_lna_rx = 10^(10/10);
N_lna_rx = k*300*BW;
G_bpf_rx = 10^(-0.6/10);
G_lpf_rx = 10^(-1.6/10);
N_bpf_rx = k*300*BW;
N_lpf_rx = k*300*BW;
N_hpa_rx = k*300*BW;
v = 3336.8; %m/s

lambda_tx = 3e8/(fc_tx*1e6);
fd = v/lambda_tx;
maxDoppler = fd/(fc_tx*1e6);

% Coverage

Re = 6378;
H = R-Re;
HPBW = 0.8*pi/180;

covS = 2*H*tan(HPBW/2);