clear all
close all
clc

Resistencia =1000
Vr(1)=0;
l=1;
tama=2500;
unos=ones(1,tama);
%sin derivar
Vin=ones(tama,2);
%primera derivada
for (i=1:tama-1)
  Vr(i+1)=(Vin(i) + Resistencia*Vr(i) - Vr(i))/Resistencia;
endfor
Vl(1)=0;
%segunda derivada
for (i=1:tama-1)
  Vl(i+1)=(Vr(i) + l*Vl(i) - Vl(i))/l;
endfor

A = [unos'  Vr'  (Vl.^2)'];
U=(inv(A'*A)*A')*unos'
u = U';
x1 = linspace(0,5,tama);
y1 = u(1) + u(2)*Vr + (1/u(3))*Vl.^2;

plot(x1,y1)
%hay que hacer R*Vin'+L*Vin''+1/c*Vin = E(t) se forma en matrices y ya se aplica para los coeficentes el metodo numerico
