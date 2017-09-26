m1x = 297.0;
m1y = 472.0;
m2x = 475.0;
m2y = 438.0;
R = 247.73;
ty = 372;
tx = 193;
Delatx = m2x-tx
Deltay = ty-m2y

l = ((Deltay)^2+(Delatx)^2)^(1/2);
h = (R^2-(l/2)^2)^(1/2);
Angle1 = acos((Delatx)/l);
Angle2 = acos(l/2/R);
Angle21 = ((acos(l/(2*R)))+(pi-Angle1));
Angle22 = ((pi-Angle1)-(acos(l/(2*R))));
Angle3 = (pi-Angle21);
Ry2 = R*cos(Angle3);
Rx2 = R*sin(Angle3);
yj22 = m2y-Ry2; %Angle4
xj22 = m2x-Rx2;
Angle4 = (pi-Angle22);
Ry1 = R*cos(Angle4);
Rx1 = R*sin(Angle4);
xj21 = m2x-Rx1; %Angle3
yj21 = m2y-Ry1;
plot([tx xj22 m2x],[ty yj22 m2y],'r')
plot([tx xj21 m2x],[ty yj21 m2y],'r')