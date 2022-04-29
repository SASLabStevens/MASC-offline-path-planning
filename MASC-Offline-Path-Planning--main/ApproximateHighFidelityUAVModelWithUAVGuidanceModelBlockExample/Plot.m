[0,0,-uavParam.ic.Pos_0(3);500,0,-uavParam.ic.Pos_0(3);500,500,-uavParam.ic.Pos_0(3);0,500,-uavParam.ic.Pos_0(3);0,0,-uavParam.ic.Pos_0(3)]


[0,0,0;500,0,200;500,500,100;0,500,300;0,0,100]


th = linspace(0,2*pi,200);
x_circle = 1016 * cos(th) + 0;
y_circle = 1016 * sin(th) + 1500;
z_circle = (cos(th).^2+sin(th).^2)*500
plot3(x_circle, y_circle, z_circle);


A_1 = [x_circle;y_circle;z_circle;]
B_1 = transpose(A_1);


A_1 = [x;y;z;]
B_1 = transpose(A_1);
r=1016;
%theta=0:pi/50:10*pi;

theta = linspace(-10*pi,0,600);
%Trajectory in x-direction
x=-r.*cos(theta);
%Trajectory in y-direction
y= r.*sin(theta);
%Trajectory in z-direction
z= -35 * theta+1000;
plot3(x,y,z);

figure()
%X_13163_Y_7164.9_Z_3000_ZARA1090
p=plot3(xx.Data(:),yy.Data(:),-zz.Data(:),'-r');
hold on
xlabel('North (m)')
ylabel('East (m)')
zlabel('Height (m)')
title('Emergency Landing Trajectory')
p.LineWidth = 2;
legend('Trail 1')
grid on


%% plot the real time trajectory in sunny weather in three view
figure()
xf = 46000; yf = -39751.8; zf = 2.356235504150391e+02;
dInput = [xf,yf,zf];
plot3(dInput(:,1),dInput(:,2),dInput(:,3),'*');
hold on
%X_13163_Y_7164.9_Z_3000_ZARA1090
A_1 = X_21822_1.Data(:);
A_1(1,:) = [];
B_1 = Y_9751_1.Data(:);
B_1(1,:) = [];
C_1 = Z_100_1.Data(:);
C_1(1,:) = [];
p=plot3(A_1,B_1,-C_1,'-r');
hold on
%X_13353_Y_14380_Z_4000
%X_23429_Y_6675.6_Z_5000
A_2 = X_11822_2.Data(:);
A_2(1,:) = [];
B_2 = Y_6751_2.Data(:);
B_2(1,:) = [];
C_2 = Z_100_2.Data(:);
C_2(1,:) = [];
r=plot3(A_2,B_2,-C_2,'-b');
hold on
A_3 = X_46000_3.Data(:);
A_3(1,:) = [];
B_3 = Y_39751_3.Data(:);
B_3(1,:) = [];
C_3 = Z_100_3.Data(:);
C_3(1,:) = [];
q=plot3(A_3,B_3,-C_3,'-g');
hold on
A_4 = X_36000_4.Data(:);
A_4(1,:) = [];
B_4 = Y_19751_4.Data(:);
B_4(1,:) = [];
C_4 = Z_100_4.Data(:);
C_4(1,:) = [];
o=plot3(A_4,B_4,-C_4,'-m');
hold on

xlabel('North (m)')
ylabel('East (m)')
zlabel('Height (m)')
title('Emergency Landing Trajectory')
p.LineWidth = 2;
q.LineWidth = 2;
r.LineWidth = 2;
o.LineWidth = 2;
legend('Configured airport 3','Landing trajectory for airport 1','Landing trajectory for airport 2','Landing trajectory for airport 3','Landing trajectory for airport 4')
grid on

%%
figure()
xf = 46000; yf = -39751.8; zf = 2.356235504150391e+02;
dInput = [xf,yf,zf];
plot(dInput(:,1),dInput(:,2),'*');
hold on
%X_13163_Y_7164.9_Z_3000_ZARA1090
A_1 = X_21822_1.Data(:);
A_1(1,:) = [];
B_1 = Y_9751_1.Data(:);
B_1(1,:) = [];
C_1 = Z_100_1.Data(:);
C_1(1,:) = [];
p=plot(A_1,B_1,'-r');
hold on
%X_13353_Y_14380_Z_4000
%X_23429_Y_6675.6_Z_5000
A_2 = X_11822_2.Data(:);
A_2(1,:) = [];
B_2 = Y_6751_2.Data(:);
B_2(1,:) = [];
C_2 = Z_100_2.Data(:);
C_2(1,:) = [];
r=plot(A_2,B_2,'-b');
hold on
A_3 = X_46000_3.Data(:);
A_3(1,:) = [];
B_3 = Y_39751_3.Data(:);
B_3(1,:) = [];
C_3 = Z_100_3.Data(:);
C_3(1,:) = [];
q=plot(A_3,B_3,'-g');
hold on
A_4 = X_36000_4.Data(:);
A_4(1,:) = [];
B_4 = Y_19751_4.Data(:);
B_4(1,:) = [];
C_4 = Z_100_4.Data(:);
C_4(1,:) = [];
o=plot(A_4,B_4,'-m');
hold on
xlabel('North (m)')
ylabel('East (m)')
zlabel('Height (m)')
title('Emergency Landing Trajectory')
p.LineWidth = 2;
q.LineWidth = 2;
r.LineWidth = 2;
o.LineWidth = 2;
legend('Configured airport 3','Landing trajectory for airport 1','Landing trajectory for airport 2','Landing trajectory for airport 3','Landing trajectory for airport 4')
grid on
%%
figure()
xf = 46000; yf = -39751.8; zf = 2.356235504150391e+02;
dInput = [xf,yf,zf];
plot(dInput(:,1),dInput(:,3),'*');
hold on
%X_13163_Y_7164.9_Z_3000_ZARA1090
A_1 = X_21822_1.Data(:);
A_1(1,:) = [];
B_1 = Y_9751_1.Data(:);
B_1(1,:) = [];
C_1 = Z_100_1.Data(:);
C_1(1,:) = [];
p=plot(A_1,-C_1,'-r');
hold on
%X_13353_Y_14380_Z_4000
%X_23429_Y_6675.6_Z_5000
A_2 = X_11822_2.Data(:);
A_2(1,:) = [];
B_2 = Y_6751_2.Data(:);
B_2(1,:) = [];
C_2 = Z_100_2.Data(:);
C_2(1,:) = [];
r=plot(A_2,-C_2,'-b');
hold on
A_3 = X_46000_3.Data(:);
A_3(1,:) = [];
B_3 = Y_39751_3.Data(:);
B_3(1,:) = [];
C_3 = Z_100_3.Data(:);
C_3(1,:) = [];
q=plot(A_3,-C_3,'-g');
hold on
A_4 = X_36000_4.Data(:);
A_4(1,:) = [];
B_4 = Y_19751_4.Data(:);
B_4(1,:) = [];
C_4 = Z_100_4.Data(:);
C_4(1,:) = [];
o=plot(A_4,-C_4,'-m');
hold on
xlabel('North (m)')
ylabel('Height (m)')
title('Emergency Landing Trajectory')
p.LineWidth = 2;
q.LineWidth = 2;
r.LineWidth = 2;
o.LineWidth = 2;
legend('Configured airport 3','Landing trajectory for airport 1','Landing trajectory for airport 2','Landing trajectory for airport 3','Landing trajectory for airport 4')
grid on

%%
figure()
xf = 46000; yf = -39751.8; zf = 2.356235504150391e+02;
dInput = [xf,yf,zf];
plot(dInput(:,2),dInput(:,3),'*');
hold on
%X_13163_Y_7164.9_Z_3000_ZARA1090
A_1 = X_21822_1.Data(:);
A_1(1,:) = [];
B_1 = Y_9751_1.Data(:);
B_1(1,:) = [];
C_1 = Z_100_1.Data(:);
C_1(1,:) = [];
p=plot(B_1,-C_1,'-r');
hold on
%X_13353_Y_14380_Z_4000
%X_23429_Y_6675.6_Z_5000
A_2 = X_11822_2.Data(:);
A_2(1,:) = [];
B_2 = Y_6751_2.Data(:);
B_2(1,:) = [];
C_2 = Z_100_2.Data(:);
C_2(1,:) = [];
r=plot(B_2,-C_2,'-b');
hold on
A_3 = X_46000_3.Data(:);
A_3(1,:) = [];
B_3 = Y_39751_3.Data(:);
B_3(1,:) = [];
C_3 = Z_100_3.Data(:);
C_3(1,:) = [];
q=plot(B_3,-C_3,'-g');
hold on
A_4 = X_36000_4.Data(:);
A_4(1,:) = [];
B_4 = Y_19751_4.Data(:);
B_4(1,:) = [];
C_4 = Z_100_4.Data(:);
C_4(1,:) = [];
o=plot(B_4,-C_4,'-m');
hold on
xlabel('East (m)')
%ylabel('East (m)')
ylabel('Height (m)')
title('Emergency Landing Trajectory')
p.LineWidth = 2;
q.LineWidth = 2;
r.LineWidth = 2;
o.LineWidth = 2;
legend('Configured airport 3','Landing trajectory for airport 1','Landing trajectory for airport 2','Landing trajectory for airport 3','Landing trajectory for airport 4')
grid on
%% ONLINE TRAJEDOTRY OFFLINE TRAJECTORY
%% plot the real time trajectory in sunny weather in three view

figure()
%X_13163_Y_7164.9_Z_3000_ZARA1090
A_1 = xx.Data(:);
A_1(1,:) = [];
B_1 = yy.Data(:);
B_1(1,:) = [];
C_1 = zz.Data(:);
C_1(1,:) = [];
p=plot3(A_1,B_1,-C_1,'-b');
A_2 = X.Data(:);
B_2 = Y.Data(:);
C_2 = Z.Data(:);
r=plot3(A_2,B_2,C_2,'-b');
hold on
xlabel('North (m)')
ylabel('East (m)')
zlabel('Height (m)')
title('Emergency Landing Trajectory')
p.LineWidth = 2;
r.LineWidth = 2;

legend('Landing Trajectory Planned Offline','Landing Trajectory Planned Online')
grid on

%%
figure()
%X_13163_Y_7164.9_Z_3000_ZARA1090
A_1 = xx.Data(:);
A_1(1,:) = [];
B_1 = yy.Data(:);
B_1(1,:) = [];
C_1 = zz.Data(:);
C_1(1,:) = [];
p=plot(A_1,B_1,'--r');
hold on
%X_13353_Y_14380_Z_4000
%X_23429_Y_6675.6_Z_5000
A_2 = X.Data(:);
B_2 = Y.Data(:);
C_2 = Z.Data(:);
r=plot(A_2,B_2,'-b');
hold on
xlabel('North (m)')
ylabel('East (m)')
title('Emergency Landing Trajectory')
p.LineWidth = 2;
r.LineWidth = 2;
legend('Landing Trajectory Planned Offline','Landing Trajectory Planned Online')
grid on
%%
figure()
%X_13163_Y_7164.9_Z_3000_ZARA1090
A_1 = xx.Data(:);
A_1(1,:) = [];
B_1 = yy.Data(:);
B_1(1,:) = [];
C_1 = zz.Data(:);
C_1(1,:) = [];
p=plot(A_1,-C_1,'--r');
hold on
A_2 = X.Data(:);
B_2 = Y.Data(:);
C_2 = Z.Data(:);
r=plot(A_2,C_2,'-b');
hold on
xlabel('North (m)')
ylabel('Height (m)')
title('Emergency Landing Trajectory')
p.LineWidth = 2;
r.LineWidth = 2;

legend('Landing Trajectory Planned Offline','Landing Trajectory Planned Online')
grid on

%%
figure()
%X_13163_Y_7164.9_Z_3000_ZARA1090
A_1 = xx.Data(:);
A_1(1,:) = [];
B_1 = yy.Data(:);
B_1(1,:) = [];
C_1 = zz.Data(:);
C_1(1,:) = [];
p=plot(B_1,-C_1,'--r');
hold on
%X_13353_Y_14380_Z_4000
%X_23429_Y_6675.6_Z_5000
A_2 = X.Data(:);
B_2 = Y.Data(:);
C_2 = Z.Data(:);
r=plot(B_2,C_2,'-b');
hold on
%xlabel('North (m)')
xlabel('East (m)')
ylabel('Height (m)')
title('Emergency Landing Trajectory')
p.LineWidth = 2;
r.LineWidth = 2;

legend('Landing Trajectory Planned Offline','Landing Trajectory Planned Online')
grid on