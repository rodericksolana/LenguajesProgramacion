--operación que recibe una función y 2 listas
--ejecución  (+) [1,2,3] [4,5,6]
operacion f [] [] = []
operacion f [] _ = []
operacion f _ [] = []
operacion f (hx:tx) (hy:ty) = [f hx hy] ++ operacion f tx ty


--Igual Mayor Menor a compara un número con una lista ....  < 5 [3,4,5,6]
-- ejecución  (<) 5 [1,2,3,4,8]
compara f n lista = [x | x <- lista , x `f` n]


-- Otra forma de comparar 
--Ejecución  (>3) [1,2,3,4,5]
compara2 f []= []
compara2 f (h:t)
       | f h = h : compara2 f t
       | otherwise = compara2 f t


--Función que encuentra el número más grande que es divisible entre 4929
-- en una lista de [1,2.. 100000]
divisibleMax n [] = []
divisibleMax n lista = if (mod last lista n == 0) 
                       then last lista  
                       else divisibleMax init lista   
