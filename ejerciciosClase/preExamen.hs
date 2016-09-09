--Función que encuentra el número más grande que es divisible entre 4929
-- en una lista de [1,2.. 100000]

dividemela = foldr1 lcm [1..3]

cantdiv :: Int -> Int -> Int
cantdiv n 1 = 1
cantdiv n m  = if  mod n m == 0 then 1 +  cantdiv n (m-1)
               else cantdiv n (m -1)

-- Toma un entero y devuelve si es o no primo
esprimo ::Int -> Bool
esprimo n = (cantdiv n n) == 2

listaPrima n cont list = if ((esprimo cont) == True)
                              then (listaPrima (n-1) (cont+1) (list ++ [cont]))
                              else 
                              if (n<1)
                              then list
                              else (listaPrima (n) (cont+1) list)

rotamela [] cont = []
rotamela lista cont = if (cont > 0)
                      then do
                      let lista2= rota 1 lista
                      lista2
                      rotamela lista2 (cont-1) 
                      else (lista)
                   
                      
                      
                      
--rotamela (rota 1 lista) (cont-1)
                      
                     

--Funcion que borra el n elemento de la lista y despues lo agrega al final
-- length (show 456)  muestra el tamaño de un numero para poder rotarlo
rota:: Int->[a]->[a]
rota n xs = drop n xs ++ take n xs