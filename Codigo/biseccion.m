function y= biseccion(fun,a,b,tol)
u= subs(fun,a);
v= subs(fun,b);
  if sign(u) == sign(v)
    disp("ERROR, NO TIENE SOLUCION EN ESTE METODO")
    RETURN
  end
 while (b-a)/2 > tol
   c=(a+b)/2;
   w= subs(fun,c);
   if sign(u) == sign(v)
     a=c;
     u=w;
    else
     b=c;
     v=w;
   endif
 endwhile


