--Función factorial
fact 1=1;
fact x = x * fact(x-1);


--Funcion con Pattern Matching
maximo [] = -1;
maximo (x : []) = x;

--Funcion regresa valor MAX de lista usando el let como binding
maximo (a:b:c)= let bigger(a,b) = if a > b
                                  then a  
                                  else b
                in
                  if c == []
                  then bigger(a,b)
                  else maximo ([bigger(a,b)] ++c)


--Otra forma de valor máximo
max [] = -1
max list = max (tail list) (head list)
           where max list current
                  | (length list) == 0 = current
                  | (head list) > current = max (tail list) (head list)
                  | otherwise = max (tail list) current


--Recibe una lista y regresa un Tupla que contiene el valor min y el valor max (min max)
-- No es valido  maxmin lista = (min lista max lista)