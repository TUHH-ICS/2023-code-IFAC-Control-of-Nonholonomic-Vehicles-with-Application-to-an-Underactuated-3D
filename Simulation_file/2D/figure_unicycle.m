%---------------------------------------------------------------------------------------------
% For Paper, 
% "Control of  Nonholonomic Vehicles with A Case of the Underactuated 3-D Underwater Vehicle: A Lyapunov function based method with the assigned nonlinear behavior gain to improve the closed-loop performance"
% by Shuyuan Fan and Herbert Werner
% Copyright (c) Institute of Control Systems, Hamburg University of Technology. All rights reserved.
% Licensed under the GPLv3. See LICENSE in the project root for license information.
% Author(s): Shuyuan Fan (shuyuan.fan@tuhh.de, shuyuanfan1993@gmail.com)
%--------------------------------------------------------------------------------------------

%% figure of unicycle

%% stabilization
load('C:\Users\sf\OneDrive - my.swjtu.edu.cn\hippocampus-control\Nonholonomic_paper\Data\unicycle_stabilization.mat')
plot(out.existing_states_wd.Time,out.existing_states_wd.Data(1,:),'r--',...
    out.existing_states_wd.Time,out.existing_states_wd.Data(2,:),'b--',...
    out.proposed_states_linear.Time,out.proposed_states_linear.Data(1,:),'r', ...
    out.proposed_states_linear.Time,out.proposed_states_linear.Data(2,:),'b','linewidth',3)

ylabel('States','fontsize',100);
xlabel('Time(s)','fontsize',100);
ylim([-1.2,1.2])
% xlim([0,10])
% grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',20)
legend('Existing-x','Existing-y','Proposed-x','Proposed-y','fontsize',20,'interpreter','latex','NumColumns',1)

%% tracking
%load('C:\Users\sf\OneDrive - my.swjtu.edu.cn\hippocampus-control\Nonholonomic_paper\Data\unicycle_tracking.mat')
plot(out.existing_states_wd.Data(1,:),out.existing_states_wd.Data(2,:),'k--',...
    out.existing_states_nd.Data(1,:),out.existing_states_nd.Data(2,:),'k--',...
    out.proposed_states_linear.Data(1,:),out.proposed_states_linear.Data(2,:),'k--',...
    out.proposed_states_nonlinear.Data(1,:),out.proposed_states_nonlinear.Data(2,:),'r',...
    out.ref.Data(:,1),out.ref.Data(:,2),'g--','linewidth',3)

%% tracking
plot(out.existing_with_derivative_error.Time,out.existing_with_derivative_error.Data(1,:),'b',...
    out.existing_no_derivative_error.Time,out.existing_no_derivative_error.Data(1,:),'r',...
    out.proposed_linear_error.Time,out.proposed_linear_error.Data(1,:),'g',...
    out.proposed_nonlinear_error.Time,out.proposed_nonlinear_error.Data(1,:),'k','linewidth',3)
ylabel('Tracking error $\sqrt{e_x^2+e_y^2}$','fontsize',100,'interpreter','latex');
xlabel('Time(s)','fontsize',100);
ylim([0,1])
% xlim([0,10])
% grid on
set(gca,'ytick',-2:1:2,'color',[1,1,1],'LineWidth',2,'fontsize',30)
legend('Existing-with derivative information ','Existing-without derivative information','Proposed-with linear gain','Proposed-with nonlinear gain','fontsize',25,'interpreter','latex','NumColumns',1)
