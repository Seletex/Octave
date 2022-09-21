hold off
clear all
clc
close all
R=9
C=0.02
L=0.5
pkg load symbolic
syms i(t)
EDO = diff(i,t,2)+(R/L)*diff(i,t) + i/(L*C)==0
sol = dsolve(EDO,i(0)==1,diff(i)(0)==-6)
u=rand(10000,1)-0.5;
y=(1:0.0001:1.9999)';
Fi=[-1*y(2:length(y)-1) -1*y(1:length(y)-2)  u(2:length(y)-1)];
Y=y(3:length(y));
Coeficientes=inv(Fi'*Fi)*Fi'*Y

c = Coeficientes(3);
b = Coeficientes(2);
a = Coeficientes(1);

EDO2= diff(i,t,2)+(c*b/a)*diff(i,t)
