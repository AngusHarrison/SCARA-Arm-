function a = openLogFile(file)

B=dlmread(file);

time=B(:,1);
vm1=B(:,2);
vm2=B(:,3);
vm3=B(:,4);
theta1=B(:,5);
theta2=B(:,6);

plot(time,theta1);
hold on;
plot(time,theta2);
title('linkage position vs time');
xlabel('time(ms)');
ylabel('linkage angle(degrees)');

