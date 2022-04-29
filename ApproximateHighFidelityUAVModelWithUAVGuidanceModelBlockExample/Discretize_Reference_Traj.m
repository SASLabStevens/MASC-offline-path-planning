
%% STARTING POINT
%X1 = 1.882141015625000e+04;  Y1 = -1.784960546875000e+04;  Z1 = 2.037800048828125e+03;
%% POINT WHERE STATUS 1 TRANSFERING TO STATUS 2
% for airport 1 X2 = 1.645667187500000e+04;  Y2 = -1.431955664062500e+04;  Z2 = 1.724025390625000e+03;
X2 = 1.645667187500000e+04;  Y2 = -1.431955664062500e+04;  Z2 = 1.724025390625000e+03;

%X2 = 1.645667187500000e+04;  Y2 = -1.431955664062500e+04;  Z2 = 1.724025390625000e+03;
%% POINT WHERE STATUS 2 TRANSFERING TO STATUS 3
X3 = 1.553610449218750e+04;  Y3 = -1.365815234375000e+04;  Z3 = 9.999995727539062e+02;


Rl = 1016;
%% This function is for testing for converge to planned straight line
xb = X1;
yb = Y1;
zb = Z1;


xf = 21822; yf = -9751.8; zf = 2.356235504150391e+02; psif = atan2(sin(24.17*pi/180) , cos(24.17*pi/180));
%xf = 11822; yf = -6751.8; zf = 2.356235504150391e+02; psif = atan2(sin(130*pi/180) , cos(130*pi/180));
%xf = 26822; yf = -14751.8; zf = 2.356235504150391e+02; psif = atan2(sin(245*pi/180) , cos(245*pi/180));
%xf = 46000; yf = -39751.8; zf = 2.356235504150391e+02; psif = atan2(sin(40*pi/180) , cos(40*pi/180));
%% Let's straightly calculate the loiter position (Z1-zl)/dis(loiter,start) = tan(5*pi/180) the transition point is in the middle of these two points.
xl         =   xf + 7 * Rl * cos(psif - pi);
yl         =   yf + 7 * Rl * sin(psif - pi);
zl         =   Z1 - sqrt((X1-xl)^2+(Y1-yl)^2)*tan(5*pi/180); % This point is important cause airplane will crash before transfer to phase 2 if the airport is vary far 
%% Let's estimate the possible status change point the transition point is between these two points.
% similar shape theorm  for getting Z2 2000/dis(loiter center,start) = (Z2-zl)/(Z1-zl)  
Z2 = 2000*(Z1-zl)/sqrt((xl-X1)^2+(yl-Y1)^2) + zl;
% for getting X2  2000/dis(loiter center,start) = (X2-xl)/(X1-xl)  \
X2 = 2000*(X1-xl)/sqrt((xl-X1)^2+(yl-Y1)^2) + xl;
% for getting Y2  2000/dis(loiter center,start) = (Y2-yl)/(Y1-yl)  \
Y2 = 2000*(Y1-yl)/sqrt((xl-X1)^2+(yl-Y1)^2) + yl;


Engine_Out = [xb,yb,-zb];
Loiter_Center = [xl,yl,zl];
Final_Point = [xf,yf,-zf];
xu = xl + Rl * cos(psif - pi);
yu = yl + Rl * sin(psif - pi);
zu = 1000;
U_Point = [xu,yu,-zu];
dInput = [xf,yf;
          xl,yl;
          xu,yu;
          xb,yb];
      fh = figure;
ah = axes(fh);
hold(ah,'on');
plot(ah,dInput(:,1),dInput(:,2),'*')
hold on

%% STRAIGHT LINE FOR PHASE ONE CONNECTING X1 AND X2
l = (X1-X2); m = (Y1-Y2); n = (Z1-Z2);
P = [X1,Y1,Z1];%START POINT X1
NORTH = linspace(X1,X2,80);
EAST = ((NORTH-X1)./l).*m + Y1;
HEIGHT = ((NORTH-X1)./l).*n + Z1;
plot3(NORTH,EAST,HEIGHT,'--r');
grid on
straight_line_box = [NORTH;EAST;-HEIGHT];
STRAIGHT_LINE_BOX = transpose(straight_line_box);
ONE2TWO = [X2,Y2,-Z2];
TWO2THREE = [xu,yu,-zu];
%% HELIX TRAJECTORY
deltaZ = Z2-Z3;
DISTANCE = deltaZ/sin(5*pi/180);% the distance between the start and end
LoiterArea = 2*pi*Rl;
ROLLS = DISTANCE/LoiterArea;
startpoint = atan2((Y2-yl),(X2-xl));
endpoint = ROLLS*2*pi+startpoint;

z2 = Z2-200;
% lowlim = -204.27/180*pi; for airport 1
%lowlim = -(130+180)/180*pi; for airport 2
%lowlim = -(245+180)/180*pi;  for airport 3
lowlim = -(40+180)/180*pi;
upperlim = pi/6;
%deltaZ = Z2-Z3;
t = lowlim:pi/250:upperlim;

M = (0.8*deltaZ)/abs(lowlim - upperlim);
st = 1016*cos(t)+xl;
ct = -1016*sin(t)+yl;
plot3(st,ct,M*t+(0.8*deltaZ + Z3-M*abs(upperlim)))
grid on

AA = [st;ct;-M*t-(0.8*deltaZ + Z3-M*abs(upperlim))];
Flip = fliplr(AA);
BB = transpose(Flip);
MM = [STRAIGHT_LINE_BOX;ONE2TWO;TWO2THREE;Final_Point];
%atan2(abs(Z1-Z2),sqrt((X1-X2)^2 + (Y1-Y2)^2))-tan(5*pi/180);
hold on
%Ru         =   sqrt((xl + Rl * cos(psif - pi) - xi)^2 + (yl + Rl * sin(psif - pi) - yi)^2);
%thetau     =   atan2( yi - yl - Rl * sin(psif - pi), xi - xl - Rl * cos(psif - pi));
fprintf("Plotting trajectories\n");
arr_x = [xu xf];  
arr_y = [yu yf];
arr_z = [zu zf];
plot3(arr_x, arr_y, arr_z,'-d');