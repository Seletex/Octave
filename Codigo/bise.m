%variables del problema (8.13)
rugosidad=input("introduce el valor de la rugosidad: ");
tolerancia=input("introduce el valor de la tolerancia: ");
a = input("introduce el valor del intervalo menor: ");
b = input("introduce el valor del intervalo mayor: ");
rangoMenor = a;
rangoMayor = b;
f = 0;
iteracion = 0;
puntosMedios = [];
valorW = [];
%valores fijos del problema
densidad=1.23;viscosidad=1.79e-5;diametro=0.005;velocidad=40;rugosidad=rugosidad/1000;
%calculamos el numero de Reynolds
Re=densidad*velocidad*diametro/viscosidad;
%definimos f como variable simbolica para utilizarla en una función g
syms f
g=(1/sqrt(f)) + (2*log10((rugosidad/(3.7*diametro))+(2.51/(Re*sqrt(f)))));
%realizamos el ciclo de x iteraciones para realizar el proceso de bisección
 while (b-a)/2 > tolerancia
   %se calcula el valor de la funcion g en cada punto extremo
   u= subs(g,a)
   v= subs(g,b)
   %se halla el punto medio del intervalo
   puntoMedio=(a+b)/2
   %se calcula el valor de la funcion g en el punto medio
   w= subs(g,puntoMedio)
   %se verifica y reasigna el nuevo valor de los intervalos
   if sign(u) == sign(w)
     a=puntoMedio;
    else
     b=puntoMedio;
   endif
   %guardamos en vectores de 1 dimensión algunos valores importantes para graficar
   puntosMedios(iteracion+1) = puntoMedio;
   valorW(iteracion+1) = double(w);
   %tambien controlamos el numeor de iteraciones
   iteracion = iteracion + 1
 endwhile
%mostramos en pantalla algunos valores importantes para la comprobación
puntoMedio
%definimos x como variable simbolica para la funcion caida de presion
syms x
caidaPresion = x*((0.2*densidad*(velocidad ^ 2))/2*diametro)
%evaluamos la caida de presión con el valor optimo de g hallado con el metodo de la biseccion
ans = subs(caidaPresion, puntoMedio)
%verificamos los vectores creados anteriormente y creamos la grafica
puntosMedios
valorW
plot(puntosMedios, valorW, '.r')

