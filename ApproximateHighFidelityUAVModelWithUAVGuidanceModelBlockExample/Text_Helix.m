Z2 = 1.724025390625000e+03;
Z3 = 9.999995727539062e+02;
%lowlim = -204.27/180*pi;
lowlim = -(130+180)/180*pi;
upperlim = pi/6;
deltaZ = Z2-Z3;
t = lowlim:pi/50:upperlim;
% reason for tims 0.8 is the height of start of loiter phase is lower than
% end of that of phase 1
M = (0.8*deltaZ)/abs(lowlim - upperlim);
st = 1016*cos(t);
ct = -1016*sin(t);
plot3(st,ct,M*t+(0.8*deltaZ + Z3-M*abs(upperlim)))
grid on

