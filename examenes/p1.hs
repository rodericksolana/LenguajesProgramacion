
-- Palindromo de producto de cifra de 3 digitos
-- tarda algo - mejor probarse con 2 cifras, si da el resultado esperado.
-- Para ejecutarse debe ponerse      pal [100..999] [100..999] []

-- Función para voltear un número
reversa n = reverse (show n)

-- Multiplica cada elemento de la lista por un número
mult x ys = map (x *) ys

-- Función para multiplicar las listas creando una lista con los resultados
pal a b c = if (length a == 0)
            then pal2 c
            else do
            pal (tail a) b (c ++ (mult (head a) b))

 
-- Función que busca dentro de la lista los palindromos comenzando del final
pal2 n = if ((reversa (last n)) == (show (last n)))
         then last n
         else pal2 (init n) 


-----------------------------------------------------------------------------------------------

-- Función para encontrar el n número de fibonacci comienza con fib(0) = 1
-- Para ejecutarse debe ponerse     fib 8
fib :: Integer -> Integer
fib n = if (n > 1)
        then fib (n-1) + fib (n-2)
        else 1
