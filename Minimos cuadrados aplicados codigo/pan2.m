hold off

clear all

close all

%Valores de entrada al sistema dinámico

u=rand(100,1);



%Generación de datos para comprobación del funcionamiento

a=0.1;

b=4;

y=zeros(100,1);

for j=2:100

  y(j)= -a*y(j-1)+b*u(j-1); %Ecuación en ediferencias de ejemplo

endfor

plot(y)

figure

%%Corrupción en los datos a partir de la

%introducción de aleatoriedad en usando valores random

ruido=rand(size(y));

plot(y+ruido,'*')

%aproximación por mínimos cuadrados



%Note el signo negativo en la primera fila de Fi

%Computer controlled system, (Amstrom. pág 513)

Fi=[-1*y(1:length(y)-1) u(1:length(y)-1)]

%Note también que se recorta un subíndice arriba

%Note también que se recorta un subíndice abajo

%Computer controlled system, (Amstrom. pág 513)

Y=y(2:length(y));

%Aplicación de la ecuación de mínimos cuadrados

Coeficientes=inv(Fi'*Fi)*Fi'*Y



%como puede comprobarse a pesar del ruido el

%algoritmo recuperó los coeficientes del sistema.
