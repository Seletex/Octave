hold off

clear all
clc
close all

%Definición de los valores independiantes de X

x=(-5:0.25:10)'
y=(-4:1:9)';


%Generación de datos para comprobación del funcionamiento

x
y


y=m*x+b;

plot(x,y)

figure



%introducción de aleatoriedad en los datos

ruido=rand(size(x));

plot(x,y+ruido,'*')

%aproximación por mínimos cuadrados

hold on

unos=ones(1,length(x));

A=[unos' x]

U=(inv(A'*A)*A')*y



%como puede comprobarse a pesar del ruido el

%algoritmo recuperó a (m) y a (b)
