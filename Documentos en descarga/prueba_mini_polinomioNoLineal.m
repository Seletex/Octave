hold off

clear all

close all

%Definición de los valores independiantes de X

x = [0 1.2 2 2.5 3.3 4 4.5 5.4 6 6.8 7.4 7.7 8.3 9 10 10.9 11.2 11.5 12.5 13 13.8 14.3 15.5 15.8 16.5 17.1 17.9 18.6 19 20];
y = [1 2.5 3.5 5.3 6.4 7.9 9 10.8 12 13.1 14.5 16 17.5 18.4 20 20.2 18 17.5 15.9 14.3 13.8 11.5 10.4 9.5 7.6 6.3 5.1 3.5 2.9 1];

%Generación de datos para comprobación del funcionamiento
subplot(5,1,1)
plot(x,y)
title("Datos reales")

%introducción de aleatoriedad en los datos
ruidox=rand(size(x));
subplot(5,1,2)
plot(x,y+ruidox,'*')
title("Datos reales con ruido")

%aproximación por mínimos cuadrados

unos=ones(1,length(x));

%se cambia A=[unos' x] por A=[unos' x']
A=[unos' x' (x.^2)'];

%se cambia U=(inv(A'*A)*A')*y por U=(inv(A'*A)*A')*y'
U=(inv(A'*A)*A')*y'

%como puede comprobarse a pesar del ruido el
%algoritmo recuperó (a), (b) y (c)

u = U';
x1 = linspace(0,20,30);
y1 = u(1) + u(2)*x + u(3)*x.^2;
subplot(5,1,3)
plot(x1,y1)
title("Imagen de la curva (grado 2) con valores hallados por minimos cuadrados")

%hacemos con polinomio de grado3
A3=[unos' x' (x.^2)' (x.^3)'];
U3=(inv(A3'*A3)*A3')*y'
u3 = U3';
x3 = linspace(0,20,30);
y3 = u3(1) + u3(2)*x3 + u3(3)*x3.^2 + u3(4)*x3.^3;
subplot(5,1,4)
plot(x3,y3)
title("Imagen de la curva (grado 3) con valores hallados por minimos cuadrados")

%hacemos con polinomio de grado4
A4=[unos' x' (x.^2)' (x.^3)' (x.^4)'];
U4=(inv(A4'*A4)*A4')*y'
u4 = U4';
x4 = linspace(0,20,30);
y4 = u4(1) + u4(2)*x4 + u4(3)*x4.^2 + u4(4)*x4.^3 + u4(5)*x4.^4;
subplot(5,1,5)
plot(x4,y4)
title("Imagen de la curva (grado 4) con valores hallados por minimos cuadrados")
