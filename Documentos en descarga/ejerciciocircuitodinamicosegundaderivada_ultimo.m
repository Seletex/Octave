clc all
clear all


R=100;
C=0.1*10^-2;
L=1000;

T=0.05;

t=0:0.01:30000*pi;
u =sin(t);

V(1)=0;
V(2)=0;


for i=1:10000

  V(i+2)=((T^2)*u(i)+(((R*C*T)-(L*C)-(T^2))*V(i))+(((2*L*C)-(R*C*T))*V(i+1)))/(L*C);

endfor
plot(V);

for i=1:5000

  Tdoble(i)= V(i+2);
  Tuno(i)=V(i+1);
  Tnormal(i)=V(i);
  E(i)= u(i);

endfor


A=[E;Tuno;Tnormal]';
Y =Tdoble';

%Calculamos la transpuesta de A
AT = A';
%Luego multiplicamos la transpuesta de A por A
ATA = AT*A;
%Calculamos la inversa de la matriz hallada en la linea 9

ATAINVERSA = inv(ATA);

display(strcat("Tamaño de ATAINVERSA= ",num2str(length(ATAINVERSA))));

display(strcat("Tamaño de ATA= ",num2str(length(ATA))));
%Aplicamos la formula U = (A^T * A)^-1 * A^T * Y
%Esto con el fin de hallar los valores de los coeficiente m y b

U = ATAINVERSA * AT * Y

%display(strcat("(",num2str(U(1)),")V(t+2T) = (",num2str(U(2)), ") Vin(t) + (" ,num2str(U(4)), ") V(t) + (",num2str(U(3)),") V(t+T)"));

for i=1:5000

  r(i)=(U(1)*u(i))+(U(2)*V(i))+(U(3)*V(i+1));

endfor;
%title('grafica final');
figure
plot (r);
