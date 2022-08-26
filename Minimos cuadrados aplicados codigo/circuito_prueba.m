clear all;
clc
pkg load control
pkg load signal
s=tf('s');
R=1000;
C=0.1*10^-3;

FT=1/(R*C*s + 1);
Ftd=c2d(FT,0.001); % continuacion de continua a driscreto, ayuda a octave
%step (FT)
t=0:0.1:50;
%lsim se usa sistema y la entrada se puede hacer con help square, hay que cargar el paquete de señales
%square(t,numero o entrada)
u=square(t,50);
lsim(Ftd,u)
a=R*C
Vin=square(t,50);
Vc(1)= 0
Ts=0.0001;
for i = 1:501
  Vc(i+1)=((a-Ts)/a)*Vc(i) + Vin(i)*(Ts/a);
endfor

plot(Vc)
