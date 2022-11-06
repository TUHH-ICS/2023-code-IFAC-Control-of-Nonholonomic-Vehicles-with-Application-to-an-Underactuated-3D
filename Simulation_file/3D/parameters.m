%---------------------------------------------------------------------------------------------
% For Paper, 
% "Control of  Nonholonomic Vehicles with A Case of the Underactuated 3-D Underwater Vehicle: A Lyapunov function based method with the assigned nonlinear behavior gain to improve the closed-loop performance"
% by Shuyuan Fan and Herbert Werner
% Copyright (c) Institute of Control Systems, Hamburg University of Technology. All rights reserved.
% Licensed under the GPLv3. See LICENSE in the project root for license information.
% Author(s): Shuyuan Fan (shuyuan.fan@tuhh.de, shuyuanfan1993@gmail.com)
%--------------------------------------------------------------------------------------------

%% parameters of NDI controller

%Angular rate gains
Kp_p = 30;
Kp_q = 10;
Kp_r = 10;

% Linear velocity gain
Kp_u =8;

% Attitude gains
Kp_roll = 10;
Kp_pitch = 8;
Kp_yaw = 8;

% Position gains
k_pos_ndi=8;
k_vel_ndi=8;


%% parameters of proposed approach
r1=4;%amplitude of N reference
r2=8; % amplitude of E reference
Ku=8; 
Kp=0.01;
Kq=5;
Kr=8;
Kf=6;
Ktau1=0.1;
Ktau2=5;
Ktau3=5;

p11 = 0.4; %0.4;
p12 = 0.2; %0.1;

p21 =0.2;  % 0.2;
p22 =0.05; % 0.1

p31 =0.3; %0.5
p32 =0.05; %0.2

p41 = 0.5; %0.4;
p42 = 0.1; %0.11;

p51 =0.5;  % 0.5;
p52 =0.1; % 0.1

p61 =0.5; %0.5
p62 = 0.1; %0.1

