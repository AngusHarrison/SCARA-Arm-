m1x = 297.0;
m1y = 472.0;
m2x = 475.0;
m2y = 438.0;
R = 247.73;
ty = 372;
tx = 193;
Delatx = m2x-tx;
Deltay = ty-m2y;

l = ((Deltay)^2+(Delatx)^2)^(1/2);
h = (R^2-(l/2)^2)^(1/2);
Angle1 = acos((Delatx)/l);
Angle2 = acos(l/2/R);
Angle21 = ((acos(l/(2*R)))+(pi-Angle1));
Angle22 = ((pi-Angle1)-(acos(l/(2*R))));


xj21 = tx + R*cos(pi - Angle21);
yj21 = ty + R*sin(pi - Angle21);
xj22 = tx + R*cos(pi - Angle22);
yj22 = ty + R*sin(pi - Angle22);

plot([tx xj22 m2x],[ty yj22 m2y],'r')
plot([tx xj21 m2x],[ty yj21 m2y],'r')