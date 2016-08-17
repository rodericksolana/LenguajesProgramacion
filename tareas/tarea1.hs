--Funcion con Pattern Matching
maximo [] = -1
maximo (x : []) = x
--Funcion regresa el valor MAX de lista usando el let como binding
maximo (a:b:c)= let bigger(a,b) = if a > b
                                  then a  
                                  else b
                in
                  if c == []
                  then bigger(a,b)
                  else maximo ([bigger(a,b)] ++c)

--Funcion regresa el valor MIN de lista  ++ Sirve para concatenar tmbn
minimo [] = -1
minimo (x : []) = x
minimo (a:b:c)= let lower(a,b) = if a < b
                                  then a  
                                  else b
                in
                  if c == []
                  then lower(a,b)
                  else minimo ([lower(a,b)] ++c)


--Recibe una lista y regresa un Tupla que contiene el valor min y el valor max (min max)
-- No es valido  maxmin lista = (min lista max lista)

minmax lista = (minimo lista , maximo lista)


--TAREA Recibir una lista de listas para regresar el mayor y menor de cada una...
tarea lista =  map minmax lista

