-- Raiz Cuadrada por el método de newton
--x: es el número del que queremos la raiz | n: cantidad de iteraciones | total: el resultado  "siempre debe ser total >= 1"
-- Para correrlo es de la siguiente manera:  -- newton 13 25 1

newton x n total = (if n <= 1 then total2 
                    else newton x (n-1) total2) 
                    where total2 = total - (((total * total) - x)/(2*total))  ;



--quickSort
-- Para correrlo hay que pasar una lista cualquiera de la siguiente manera
-- quickSort []   |  quickSort[6]   | quickSort[6,8,3,1,9]

quickSort [] = []
quickSort (h:t) = let left = [x | x <- t, x < h]
                      right = [x | x <- t, x >= h]
                  in
                    quickSort left ++ [h] ++ quickSort right