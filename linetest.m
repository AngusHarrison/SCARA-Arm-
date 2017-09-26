x0 = 100; 
y0 = 200;
x1 = 220;
y1 = 100;
N = 50;
dx = (x1-x0)/N;
dy = (y1-y0)/N;
x = x0:dx:x1;
y = y0:dy:y1;

%%%Calibration Equation%%%
v1=1400;
v2=1600;
a1=152;
a2=139;
a = (a1+(v-v1)*(a2-a1)/(v2-v1)); %What is V?%
%%%%%%%


[t1, t2] = xy2a(x,y);
[v1, v2] = AtoV(t1,t2);
s = size(v1);
time = 1:s(2);
plot(time,v1,'r',time,v2, 'b')
pen = 1500*ones(1,s(2));

out = zeros(s(2),3);
out(:,1) = floor(v1);
out(:,2) = floor(v2);
out(:,3) = pen;

dlwrite('line txt',out);

