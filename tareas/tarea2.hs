-- Raiz Cuadrada por el m�todo de newton
--x: es el n�mero del que queremos la raiz | n: cantidad de iteraciones | total: el resultado  "siempre debe ser total >= 1"
-- Para correrlo es de la siguiente manera:  -- newton 13 25 1

newton x n total = (if n <= 1 then total2 
                    else newton x (n-1) total2) 
                    where total2 = total - (((total * total) - x)/(2*total))  ;



--