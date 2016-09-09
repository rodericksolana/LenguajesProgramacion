
-- Palindromo de producto de cifra de 3 digitos
-- tarda algo - mejor probarse con 2 cifras, si da el resultado esperado.
-- Para ejecutarse debe ponerse      pal [100..999] [100..999] []

-- Funci�n para voltear un n�mero
reversa n = reverse (show n)

-- Multiplica cada elemento de la lista por un n�mero
mult x ys = map (x *) ys

-- Funci�n para multiplicar las listas creando una lista con los resultados
pal a b c = if (length a == 0)
            then pal2 c
            else do
            pal (tail a) b (c ++ (mult (head a) b))

 
-- Funci�n que busca dentro de la lista los palindromos comenzando del final
pal2 n = if ((reversa (last n)) == (show (last n)))
         then last n
         else pal2 (init n) 


-----------------------------------------------------------------------------------------------

-- Funci�n para encontrar el n n�mero de fibonacci comienza con fib(0) = 1
-- Para ejecutarse debe ponerse     fib 8
fib :: Integer -> Integer
fib n = if (n > 1)
        then fib (n-1) + fib (n-2)
        else 1
