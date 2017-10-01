function [t1,t2] = xy2a(tx,ty)
%Inputs/Veriables
m1x = 297.0;
m1y = 472.0;
m2x = 475.0;
m2y = 438.0;
R = 247.73;

%%%%%%%%%%% MOTOR 1 %%%%%%%%%%%
Delatx = m1x-tx;
Deltay = ty-m1y;
	
l = ((Deltay).^2+(Delatx).^2).^(1/2);
h = (R.^2-(l/2).^2).^(1/2);

Angle1 = acos((Delatx)/l);
Angle2 = acos(l/(2*R));
Angle21 = ((Angle2)+(pi-Angle1));
Angle22 = ((pi-Angle1)-(Angle2));

xj21 = tx + R*cos(pi - Angle21);
yj21 = ty + R*sin(pi - Angle21);
xj22 = tx + R*cos(pi - Angle22);
yj22 = ty + R*sin(pi - Angle22);
		
M1Angle11 = -atan2(yj21 - m2y, xj21 - m2x); % needs to be in deg
M1Angle12 = -atan2(yj22 - m2y, xj22 - m2x); % needs to be in deg

M1LinkageAngle11 = ((M1Angle11*180)/pi);
M1LinkageAngle12 = ((M1Angle12*180)/pi);
	
%%%%%%%%%%% MOTOR 2 %%%%%%%%%%%
Delatx = m2x-tx;
Deltay = ty-m2y;

l = ((Deltay).^2+(Delatx).^2).^(1/2);
h = (R.^2-(l/2).^2).^(1/2);

Angle1 = acos((Delatx)/l);
Angle2 = acos(l/(2*R));
Angle21 = ((Angle2)+(pi-Angle1));
Angle22 = ((pi-Angle1)-(Angle2));

xj21 = tx + R*cos(pi - Angle21);
yj21 = ty + R*sin(pi - Angle21);
xj22 = tx + R*cos(pi - Angle22);
yj22 = ty + R*sin(pi - Angle22);

M2Angle21 = -atan2(yj21 - m2y, xj21 - m2x); 
M2Angle22 = -atan2(yj22 - m2y, xj22 - m2x);

M2LinkageAngle21 = ((M2Angle21*180)/pi); % needs to be in deg
M2LinkageAngle22 = ((M2Angle22*180)/pi); % needs to be in deg

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t1=M2Angle21;
t2=M2Angle22;
