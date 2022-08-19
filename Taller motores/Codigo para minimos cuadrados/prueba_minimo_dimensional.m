hold off

clear all

close all

%Definición de los valores independiantes de X

x = [-9.56 -7.6 -7.02 -6.5 -5.95 -5.55 -5 -4.47 -3.97 -3.43 -2.9 -2.34 -1.85 -1.5 -0.9 -0.2 0.3 0.75 1.25 1.8 2.25 2.75 3.29 3.7 4.19 4.63 5.1 5.56 6 6.6 7.05 9.1];
y = [-10 -8 -7.5 -7 -6.5 -6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 10];
%Generación de datos para comprobación del funcionamiento
plot(x,y)

figure
%introducción de aleatoriedad en los datos
ruidox=rand(size(x));

plot(x,y+ruidox,'*')
%aproximación por mínimos cuadrados
hold on

unos=ones(1,length(x));
%se cambia A=[unos' x] por A=[unos' x']
A=[unos' x']
%se cambia U=(inv(A'*A)*A')*y por U=(inv(A'*A)*A')*y'
U=(inv(A'*A)*A')*y'
%como puede comprobarse a pesar del ruido el

%algoritmo recuperó a (m) y a (b)
