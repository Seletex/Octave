
clear all
clear all


a=zeros(200,200);

imshow(a)
g=9.8;
b= 0.43;
vy(1)=0;


p=1000;   %en kg/mt^3
posicionver=40;
posicionhor=100;
m= 1000;  %en kg    mas de 1000 fondo, menos flota, igual equilibrio
v= 1;   %en mt^3

ks=0.5; %constante de reduccion de velocidad en subida
kb= 0.85;  %constante de reduccion de velocidad en bajada

datoDeseado=70;

dt=1000;




for j= 1:200
   a(30,j)=255;
endfor

for j= 1:70
   a(datoDeseado,j)=255;
endfor


imshow(a);

for i = 1:20000


  E = - (p*g*v);


  vy(i+1)=dt*((E/m) + g -((b*vy(i))/m)) + vy(i);
  posicionver(i+1)=posicionver(i)+ dt*vy(i+1);



  d = datoDeseado - posicionver(i+1);
  m = 0.0001*d+1000;

##  if(d>= 0)
##   m = 1100;
##
##   %vy(i+1)=vy(i+1)*kb;
##
##
##  else
##   m= 900;
##   %vy(i+1)=vy(i+1)*ks;
##
##endif





  if(posicionver(i+1)>=200)
    posicionver(i+1)=200;
  end

   if(posicionver(i+1)<=30)
    posicionver(i+1)=29;

  end
  a(floor(posicionver(i+1)),100)=255;

  imshow(a);
  a(floor(posicionver(i+1)),100)=0;
  pause(0.000000001);
  endfor
