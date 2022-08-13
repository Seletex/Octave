Function Bisect(x1,xu,es, imax, xr, iter, ea)
  iter = 0
  fl = f(x1)
  Do
    xrold = xr
    xr = (xl + xu) / 2
    fr = f(xr)
    iter = iter + 1
  IF xr =! 0 THEN
    ea = ABS((xr – xrold) / xr) * 100
  END IF
    test = fl * fr
  IF test < 0 THEN
    xu = xr
  ELSE IF test > 0 THEN
    xl = xr
    fl = fr
  ELSE
    ea = 0
  END IF
  IF ea < es OR iter >= imax EXIT
  END DO
  Bisect = xr
 END Bisect
