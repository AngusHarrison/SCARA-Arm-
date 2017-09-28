
%%%Conversion of angle to PWM%%%
v1=1400;
v2=1600;
a11=152;
a12=139;
%v = (v1+(a(Input)-a1))*((v2-v1)/a2-a1);  %voltage output for input angle a
t1 = v1 +(M1LinkageAngle11 -a11)*(v2-v1)/(a12-a11);
a21=86;
a22=70;
t2 = v2 +(M2LinkageAngle21 -a21)*(v2 -v1)/(a22-a21);
