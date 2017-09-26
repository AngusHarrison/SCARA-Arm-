m1x = 297.0;
m1y = 472.0;
m2x = 475.0;
m2y = 438.0;
R = 247.73;
ty = 372;
tx = 193;

%Direct Kinematics:
  %x and y positions of joints
    xj1 = m1x + Rcos(theta1)
    yj1 = m1y + Rsin(theta1)
    xj2 = m2x + Rcos(theta2)
    yj2 = m2y + Rsin(theta2)
  
  %Midpoint between joints 1 and 2
    xA = xj1 + 0.5(xj2 - xj1)
    yA = yj1 + 0.5(yj2 - yj1)
    
  %Expression for h in terms of R and the distance between j1 and j2
	d = sqrt(Math.pow(xj2 - xj1, 2) + Math.pow(yj2 - yj2, 2))
    h = sqrt(r*r - .5*d*d)
  
  %: x and y coordinates for T1 and T2
    xt1 = xa + hcos(PI/2 - alpha)
    yt1 = ya + hsin(PI/2 - alpha)
    xt2 = xa - hcos(PI/2 - alpha)
    yt2 = ya - hsin(PI/2 - alpha)
    
% Inverse Kinematics
  %x and y positions of joints j21 and j22
    xj21 = tx + rcos(PI - theta21)
    yj21 = ty + rsin(PI - theta21)
    xj22 = tx + rcos(PI - theta22)
    yj22 = ty + rsin(PI - theta22)
    
  %angles  
theta21 = atan2(y21 - ym2, xj21 - xm2)
theta 22 = atan2(yj22 - ym2, xj22 - xm2)