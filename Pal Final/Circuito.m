clear all
close all
clc
R = 1000;
C=0.1*10^-6;
deltaT=0.00001;
f=(R*C)/deltaT
Vc(1)=0.0001;

tama=50;
Vin=ones(tama,2);
for (i=1:tama-1)
  Vc(i+1)=(Vin(i) + f*Vc(i) - Vc(i))/f;
endfor
plot(Vc);
