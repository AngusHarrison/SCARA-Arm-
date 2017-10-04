x0 = 350; 
y0 = 100;
x1 = 450;
y1 = 200;
N = 50;
dx = (x1-x0)/N;
dy = (y1-y0)/N;
x = x0:dx:x1;
y = y0:dy:y1;

[t1, t2] =xy2a(x,y);     %pass x and y to xy2a.m that will turn the x and y to angle t1 and t2 
[v1, v2] =AtoV(t1,t2);   %pass t1 and t1(t1/2 = angle) AtoV.m will turn yt1/2 into voltages(pwm) call v1 and v2 

s = size(v1);
time = 1:s(2);
plot(time,v1,'r',time,v2, 'b')
pen = 1500*ones(1,s(2));

out = zeros(s(2),3);
out(:,1) = floor(v1);
out(:,2) = floor(v2);
out(:,3) = pen;
dlmwrite('Straightline',out);
