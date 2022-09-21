close all

clear all

hold off



%Definición de la matriz A de la ecuación Ax+Bu, con R=3,L=1 y C=0.5.

A=[0 -2;1 -3]

B=[2;0]

% Definición de la matriz identidad por medio de la función eye.

I=eye(2,2)

T=0.2;%Definición del periodo de muestreo.

%Estados iniciales iguales a un voltio y un amperio.

x=[1;1];

Fi=(T*A+I)

%Ecuación de estado discreto, cuando la fuente de corriente u=0

%(por tanto : TBu=0)

for j=1:100

  x=Fi*x

  Grafico(1,j)=x(1,1);

  Grafico(2,j)=x(2,1);

endfor

%gráfico de primera fila que corresponde a X1 (Vc)

plot((1:j)*T,Grafico(1,:))

ylabel('Voltaje')

figure

plot((1:j)*T,Grafico(2,:))

ylabel('Corriente')


