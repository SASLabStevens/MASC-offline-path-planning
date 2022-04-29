%% STARTING POINT
X1 = 1.882141015625000e+04;  Y1 = -1.784960546875000e+04;  Z1 = 2.037800048828125e+03;
%% POINT WHERE STATUS 1 TRANSFERING TO STATUS 2
X2 = 1.645667187500000e+04;  Y2 = -1.431955664062500e+04;  Z2 = 1.724025390625000e+03;

xb = X1;
yb = Y1;
zb = Z1;

l = (X1-X2); m = (Y1-Y2); n = (Z1-Z2);
P = [X1,Y1,Z1];%START POINT X1
NORTH = linspace(X1,X2,100);
EAST = ((NORTH-X1)./l).*m + Y1;
HEIGHT = ((NORTH-X1)./l).*n + Z1;
plot3(NORTH,EAST,HEIGHT,'--r');
grid on
hold on
string_x = [X2 xb];
string_y = [Y2 yb];
string_z = [Z2 zb];
plot3(string_x, string_y, string_z,'-b');