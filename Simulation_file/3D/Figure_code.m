%---------------------------------------------------------------------------------------------
% For Paper, 
% "Control of  Nonholonomic Vehicles with A Case of the Underactuated 3-D Underwater Vehicle: A Lyapunov function based method with the assigned nonlinear behavior gain to improve the closed-loop performance"
% by Shuyuan Fan and Herbert Werner
% Copyright (c) Institute of Control Systems, Hamburg University of Technology. All rights reserved.
% Licensed under the GPLv3. See LICENSE in the project root for license information.
% Author(s): Shuyuan Fan (shuyuan.fan@tuhh.de, shuyuanfan1993@gmail.com)
%--------------------------------------------------------------------------------------------

%% Stabilization case
% with v w and witout vw
figure(1)
plot(out1.simout_full.Time,out1.simout_full.Data(:,1),'r--',...
    out1.simout_full.Time,out1.simout_full.Data(:,2),'g--',...
    out1.simout_full.Time,out1.simout_full.Data(:,3),'k--',...
    out2.simout_novw.Time,out2.simout_novw.Data(1,:),'r',...
    out2.simout_novw.Time,out2.simout_novw.Data(2,:),'g',...
    out2.simout_novw.Time,out2.simout_novw.Data(3,:),'k','linewidth',3);
ylabel('States(m)','fontsize',100);
xlabel('Time(s)','fontsize',100);
ylim([-1.8,1.5])
xlim([0,10])
grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('F-$e_N$','F-$e_E$','F-$e_D$','S-$e_N$','S-$e_E$','S-$e_D$','fontsize',20,'interpreter','latex','NumColumns',2)


%% 1. low speed reference with saturation
figure(2)
load('C:\Users\sf\OneDrive - my.swjtu.edu.cn\hippocampus-control\Nonholonomic_paper\Data\low_with_saturation.mat')
tiledlayout(2,1)
nexttile
plot(out.PDPD_norm_error.Time,out.PDPD_norm_error.Data(:,1),'g',...
    out.NDI_norm_error.Time,out.NDI_norm_error.Data(:,1), 'magenta',...
    out.Proposed_Linear_norm_error.Time,out.Proposed_Linear_norm_error.Data(:,1),'b',...
    out.Proposed_Nonlinear_norm_error.Time,out.Proposed_Nonlinear_norm_error.Data(:,1),'r',...
    'linewidth',3)
ylabel('$||e_P||(m)$','interpreter','latex','fontsize',12)
xlim([0,60])
%ylim([0,0.9])
set(gca,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
%title('Case 10 without disturbance','fontsize',20)
grid off

nexttile
plot(out.PDPD_norm_error.Time,out.PDPD_norm_error.Data(:,1),'g',...
    out.NDI_norm_error.Time,out.NDI_norm_error.Data(:,1), 'magenta',...
    out.Proposed_Linear_norm_error.Time,out.Proposed_Linear_norm_error.Data(:,1),'b',...
    out.Proposed_Nonlinear_norm_error.Time,out.Proposed_Nonlinear_norm_error.Data(:,1),'r',...
    'linewidth',3)

ylabel('$||e_P||(m)$','interpreter','latex','fontsize',12)
xlabel('Time(s)','fontsize',12)
xlim([60,120])
set(gca,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
%title('Case 10 without disturbance','fontsize',20)
grid off
legend('PDPD (11.98)','NDI (10.77)','Proposed-Linear (5.66)','Proposed-Nonlinear (5.31)','Fontsize',20,'interpreter','latex','NumColumns',2,'Location','north');
legend('boxoff')




%% 2. low speed reference without saturation
figure(3)
load('C:\Users\sf\OneDrive - my.swjtu.edu.cn\hippocampus-control\Nonholonomic_paper\Data\low_without_saturation.mat')
tiledlayout(2,1)
nexttile
plot(out.PDPD_norm_error.Time,out.PDPD_norm_error.Data(:,1),'g',...
    out.NDI_norm_error.Time,out.NDI_norm_error.Data(:,1), 'magenta',...
    out.Proposed_Linear_norm_error.Time,out.Proposed_Linear_norm_error.Data(:,1),'b',...
    out.Proposed_Nonlinear_norm_error.Time,out.Proposed_Nonlinear_norm_error.Data(:,1),'r',...
    'linewidth',3)
ylabel('$||e_P||(m)$','interpreter','latex','fontsize',12)
xlim([0,60])
%ylim([0,0.9])
set(gca,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
%title('Case 10 without disturbance','fontsize',20)
grid off

nexttile
plot(out.PDPD_norm_error.Time,out.PDPD_norm_error.Data(:,1),'g',...
    out.NDI_norm_error.Time,out.NDI_norm_error.Data(:,1), 'magenta',...
    out.Proposed_Linear_norm_error.Time,out.Proposed_Linear_norm_error.Data(:,1),'b',...
    out.Proposed_Nonlinear_norm_error.Time,out.Proposed_Nonlinear_norm_error.Data(:,1),'r',...
    'linewidth',3)

ylabel('$||e_P||(m)$','interpreter','latex','fontsize',12)
xlabel('Time(s)','fontsize',12)
xlim([60,120])
%ylim([0,1])
set(gca,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
%title('Case 10 without disturbance','fontsize',20)
grid off

legend('PDPD (2.48)','NDI (1.53)','Proposed-Linear (0.92)','Proposed-Nonlinear (0.59)','Fontsize',20,'interpreter','latex','NumColumns',2,'Location','north');
legend('boxoff')


%% 3. high speed reference with saturation
figure(4)
load('C:\Users\sf\OneDrive - my.swjtu.edu.cn\hippocampus-control\Nonholonomic_paper\Data\high_with_saturation.mat')
tiledlayout(2,1)
nexttile
plot(out.PDPD_norm_error.Time,out.PDPD_norm_error.Data(:,1),'g',...
    out.NDI_norm_error.Time,out.NDI_norm_error.Data(:,1), 'magenta',...
    out.Proposed_Linear_norm_error.Time,out.Proposed_Linear_norm_error.Data(:,1),'b',...
    out.Proposed_Nonlinear_norm_error.Time,out.Proposed_Nonlinear_norm_error.Data(:,1),'r',...
    'linewidth',3)
ylabel('$||e_P||(m)$','interpreter','latex','fontsize',12)
xlim([0,60])
set(gca,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
%title('Case 10 without disturbance','fontsize',20)
grid off

nexttile
plot(out.PDPD_norm_error.Time,out.PDPD_norm_error.Data(:,1),'g',...
    out.NDI_norm_error.Time,out.NDI_norm_error.Data(:,1), 'magenta',...
    out.Proposed_Linear_norm_error.Time,out.Proposed_Linear_norm_error.Data(:,1),'b',...
    out.Proposed_Nonlinear_norm_error.Time,out.Proposed_Nonlinear_norm_error.Data(:,1),'r',...
    'linewidth',3)

ylabel('$||e_P||(m)$','interpreter','latex','fontsize',12)
xlabel('Time(s)','fontsize',12)
xlim([60,120])
set(gca,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
%title('Case 10 without disturbance','fontsize',20)
grid off



set(gca,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
legend('PDPD (106.96)','NDI (31.06)','Proposed-Linear (19.52)','Proposed-Nonlinear (16.83)','Fontsize',20,'interpreter','latex','NumColumns',2,'Location','north');
legend('boxoff')




%% 4. high speed reference without saturation
figure(5)
load('C:\Users\sf\OneDrive - my.swjtu.edu.cn\hippocampus-control\Nonholonomic_paper\Data\high_without_saturation.mat')
tiledlayout(2,1)
nexttile
plot(out.PDPD_norm_error.Time,out.PDPD_norm_error.Data(:,1),'g',...
    out.NDI_norm_error.Time,out.NDI_norm_error.Data(:,1), 'magenta',...
    out.Proposed_Linear_norm_error.Time,out.Proposed_Linear_norm_error.Data(:,1),'b',...
    out.Proposed_Nonlinear_norm_error.Time,out.Proposed_Nonlinear_norm_error.Data(:,1),'r',...
    'linewidth',3)
ylabel('$||e_P||(m)$','interpreter','latex','fontsize',12)
xlim([0,60])
ylim([0,1])
set(gca,'ytick',0:0.5:1,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
%title('Case 10 without disturbance','fontsize',20)
grid off

nexttile
plot(out.PDPD_norm_error.Time,out.PDPD_norm_error.Data(:,1),'g',...
    out.NDI_norm_error.Time,out.NDI_norm_error.Data(:,1), 'magenta',...
    out.Proposed_Linear_norm_error.Time,out.Proposed_Linear_norm_error.Data(:,1),'b',...
    out.Proposed_Nonlinear_norm_error.Time,out.Proposed_Nonlinear_norm_error.Data(:,1),'r',...
    'linewidth',3)

ylabel('$||e_P||(m)$','interpreter','latex','fontsize',12)
xlabel('Time(s)','fontsize',12)
xlim([60,120])
ylim([0,1])
set(gca,'ytick',0:0.5:1,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
%title('Case 10 without disturbance','fontsize',20)
grid off
legend('PDPD (2.24)','NDI (3.48)','Proposed-Linear (1.23)','Proposed-Nonlinear (0.80)','Fontsize',20,'interpreter','latex','NumColumns',2,'Location','north');
legend('boxoff')




%% 8.3d Trajectory positive disturbance without saturation
figure(9)
load('C:\Users\sf\OneDrive - my.swjtu.edu.cn\hippocampus-control\Nonholonomic_paper\Data\high_without_saturation.mat')

plot3(out.PDPD_state.Data(1,:),out.PDPD_state.Data(2,:),...
    out.PDPD_state.Data(3,:),'g','linewidth',2)
zlim([0,13])
xlim([-4,4])
ylim([-9,9])
hold on

plot3(out.NDI_state.Data(1,:),out.NDI_state.Data(2,:),...
    out.NDI_state.Data(3,:),'m','linewidth',2)
zlim([0,13])
xlim([-7,7])
ylim([-9,9])
hold on

plot3(out.LyL_state.Data(1,:),out.LyL_state.Data(2,:),...
    out.LyL_state.Data(3,:),'b','linewidth',2)
zlim([0,13])
xlim([-7,7])
ylim([-9,9])
hold on
plot3(out.Ly_state.Data(1,:),out.Ly_state.Data(2,:),...
    out.Ly_state.Data(3,:),'r','linewidth',2)
zlim([0,13])
xlim([-7,7])
ylim([-9,9])
hold on


plot3(out.ref.Data(:,1),out.ref.Data(:,2),...
    out.ref.Data(:,3),'-.k','linewidth',2)
zlim([0,13])
xlim([-7,7])
ylim([-9,9])
hold on
xlabel('N(m)','fontsize',20)
ylabel('E(m)','fontsize',20)
zlabel('D(m)','fontsize',20)
grid on
set(gca,'color',[1,1,1],'Units','normalized','LineWidth',1.5,'fontsize',20)
legend('PDPD','NDI','Proposed-Linear','Proposed-Nonlinear','Reference','Fontsize',20,'interpreter','latex','NumColumns',2,'Location','north');
legend('boxoff')

