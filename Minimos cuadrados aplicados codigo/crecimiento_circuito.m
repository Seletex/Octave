%Vin = [1 2 3 4 5 6 7 8 9 10 10.1 10.2 10.3 10.4 10.5 10.6 10.7 10.8 10.9 11 12 12.5];
clear all
close all
clc
R = 1000;
C=0.1*10^-6;
deltaT=0.00001;
f=(R*C)/deltaT
Vc(1)=0;
Vc(2)=0;
Vc(3)=0;
Vc(4)=0;
tama=50;
Vin=ones(tama,2);
for (i=4:tama-1)
  Vc(i+1)=((Vc(i)+f*Vc(i)-Vin(i))/f);
endfor
plot(Vc);
