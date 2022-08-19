hold off

clear all

close all

%Definición de los valores independiantes de X

x = [-9.56 -7.6 -7.02 -6.5 -5.95 -5.55 -5 -4.47 -3.97 -3.43 -2.9 -2.34 -1.85 -1.5 -0.9 -0.2 0.3 0.75 1.25 1.8 2.25 2.75 3.29 3.7 4.19 4.63 5.1 5.56 6 6.6 7.05 9.1];
y = [-10 -8 -7.5 -7 -6.5 -6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 10];

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
x1 = linspace(-10,10,32);
y1 = u(1) + u(2)*x + u(3)*x.^2;
subplot(5,1,3)
plot(x1,y1)
title("Imagen de la curva (grado 2) con valores hallados por minimos cuadrados")

%hacemos con polinomio de grado3
A3=[unos' x' (x.^2)' (x.^3)'];
U3=(inv(A3'*A3)*A3')*y'
u3 = U3';
x3 = linspace(-10,10,32);
y3 = u3(1) + u3(2)*x3 + u3(3)*x3.^2 + u3(4)*x3.^3;
subplot(5,1,4)
plot(x3,y3)
title("Imagen de la curva (grado 3) con valores hallados por minimos cuadrados")

%hacemos con polinomio de grado4
A4=[unos' x' (x.^2)' (x.^3)' (x.^4)'];
U4=(inv(A4'*A4)*A4')*y'
u4 = U4';
x4 = linspace(-10,10,32);
y4 = u4(1) + u4(2)*x4 + u4(3)*x4.^2 + u4(4)*x4.^3 + u4(5)*x4.^4;
subplot(5,1,5)
plot(x4,y4)
title("Imagen de la curva (grado 4) con valores hallados por minimos cuadrados")
