clear all
close all
clc
R = 1000;
L=100;
C=0.000001;
deltaT=0.0001;
tama=10000;
unos=ones(1,tama);
%Vin=rand(tama,1)+1;
Vin =(1:0.0001:1.9999)';
Vc(1)=0;
Vc(2)=0
f= (R*C)/(deltaT)
g= (L*C)/((deltaT^2))
for (i=1:tama-2)
  Vc(i+2)=(Vin(i)-(f-(2*g))*Vc(i+1)-((-f+g+1)*Vc(i)))/g;
endfor
plot(Vc);
A=[unos' Vin (Vin.^2)];
U=(inv(A'*A)*A')*Vc';
u = U'
prom = 0;
for (i=1:tama-1)
  prom=prom+Vin(i);
endfor
prom=prom/tama;
prom/g
(f-(2*g))/g
(-f+g+1)/g
coef1=u(1);
coef2=u(2);
coef3=u(3);
m=0;
n=0;
f=(coef1*coef2)/(deltaT)
g=((coef2*coef3)/(((deltaT)^2)))*(-1)
prom/g
(f-(2*g))/g
(-f+g+1)/g
for (i=1:tama-2)
  Vc(i+2)=(Vin(i)-(f-(2*g))*Vc(i+1)-((-f+g+1)*Vc(i)))/g;
endfor
figure
plot(Vc);
A=[unos' Vin (Vin.^2)];
U=(inv(A'*A)*A')*Vc';
u = U'



