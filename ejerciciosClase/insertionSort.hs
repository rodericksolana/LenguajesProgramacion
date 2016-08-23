 
--Se ponen las funciones que necesitamos con el let ++ para concatenar es igual usar :
-- in es para mandar llamar la función
insertada [] = []
insertada (h:[]) =[h]
insertada (h:t) = let insertando num [] =[num]
                      insertando num (h:t) = if num > h
                                             then [h] ++ (insertando num t)
                                             else [num] ++ [h] ++ t
                   in 
                      insertando h (insertada t)

-- lc  list comprehension  Pero es quickSort
--  output      domain       predicate   
-- [y      |   y <- lista   , x >= y]
insertionSort [] = []
insertionSort (h:[]) = [h]
insertionSort (h:t) = let lc x lista = [y | y <- lista , x >= y] ++ [x] ++ [y | y <- lista , x <= y]
                       in
                          lc h (insertionSort t)