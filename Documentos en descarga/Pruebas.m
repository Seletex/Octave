hold off
clear all
clc
close all

pkg load control

%Construimos la función de transferencia s
numerador = [0 10];
denominador = [1,2,10];
sc = tf(numerador,denominador)

%transformamos la función de continua a discreta
sd= c2d(sc,0.001)

%Generamos 20000 inputs aleatorios  entre 0 y 10 para el sistema
u=rand(20000,1)*10;

%evaluamos la funcion de transferencia sd con los valores de u y los guardamos.
[y1 t1]=lsim(sd,u);

%graficamos la función de trasnferencia.
subplot(2,1,1)
plot (t1,y1)

%Empezamos con los minimos cuadrados, primero generamos el vector A y Y
A = [-1*[0;y1(1:length(y1)-1)], -1*[0;0;y1(1:length(y1)-2)], [0;u(1:length(u)-1)],  [0;0;u(1:length(u)-2)]];
Y = y1;



%Aplicamos de la ecuación de mínimos cuadrados

Coe=inv(A'*A)*A'*Y;
CoeInv= Coe'
Saprox = tf([0, Coe(3), Coe(4)],[1, Coe(1), Coe(2)],0.001)
[y2 t2]=lsim(Saprox,u);
subplot(2,1,2)
plot(t2,y2)


