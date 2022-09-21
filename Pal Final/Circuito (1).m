clear all
close all
clc
R = 3;
L=1;
C=0.5;
deltaT=0.0001;
f=L*C
g=R*C*deltaT
Vc(1)=0;
Vc(2)=0;

tama=50;
Vin=ones(tama,1);
unos=ones(tama,1);
for (i=2:tama-2)
  Vc(i+1)=(Vin(i)*deltaT^2 + ((2*f)+g-deltaT^2)*Vc(i) - f*Vc(i-1))/(f+g);

endfor
plot(Vc);
