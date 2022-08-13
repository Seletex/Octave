
function bisect()
  rho=1.23;mu=1.79e-5;D=0.005;V=40;e=0.0015/1000;
  Re=rho*V*D/mu;
  g=@(f) 1/sqrt(f)+2*log10(e/(3.7*D)+2.51/(Re*sqrt(f)));
  who
  fplot(g,[0.08,0.008]),grid,xlabel("f"),ylabel("g(f)")
  who
  disp (" ")
 end
