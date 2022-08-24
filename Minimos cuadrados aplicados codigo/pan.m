pkg load control
clear all
close all
hold off;

num=1.1*[0.008594  0.008548]
den=-[-1.984  0.9841]

Ts=1;

%Condiciones iniciales del programa y de la ecuación en diferencias

Entrada(1)=0;
Entrada(2)=1;
Entrada(3)=1;
Entrada(4)=1;
SalidaSis(1)=0;
SalidaSis(2)=0;
SalidaSis(3)=0;
SalidaSis(4)=0;
i=4;
Referencia(i)=1;
error=Referencia(i);
u(1)=1;
u(2)=1;
u(3)=1;
u(4)=1;

error(1)=0;
error(2)=0;
error(3)=0;
error(4)=0;
error(5)=0;

%%Proceso en lazo abierto

while (i<250)

Referencia(i)=1;
SalidaSis(i)=num*[u(i-1) u(i-2)]' + den*[SalidaSis(i-1) SalidaSis(i-2)]';
i=i+1;
u(i)=1;

end


SalidaSis(i)=SalidaSis(i-1);
u(i)=0;
%Graficar la salida
t=1:length(SalidaSis);
plot(t*Ts , SalidaSis + 81.5) %%Se suma el offset de donde arrancó el experimento
