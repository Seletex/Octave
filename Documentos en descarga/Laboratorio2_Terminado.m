hold off
clear all
clc
close all

pkg load control
format short
graphics_toolkit('gnuplot')

s=tf('s');

ft=10/(s^2+2*s+10);

ftd=c2d(ft,0.0001)

%Valores de entrada al sistema dinámico

u=rand(15000,1)-0.5;
[y t]=lsim(ftd,u);

%Computer controlled system, (Amstrom. pág 513)

Fi=[-1*y(2:length(y)-1) -1*y(1:length(y)-2)  u(2:length(y)-1) u(1:length(y)-2)];
Y=y(3:length(y));

%Aplicación de la ecuación de mínimos cuadrados

format short

Coeficientes=inv(Fi'*Fi)*Fi'*Y

a = Coeficientes(4);
b = Coeficientes(3);
c = Coeficientes(2);
d = Coeficientes(1);

ftd2 = (b*s + a)/(s^2 + d*s + c)
%ftd2z=c2d(ftd2,0.001)
figure
plot(y)
figure
%step(ft)
step(ftd2)

%[y t]=lsim(ftd2,u);
%for i=1: 1000
%  plot(i*ftd)
%  pause(0.00001)
%endfor



