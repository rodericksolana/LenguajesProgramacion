--Palindromo de producto de cifra de 3 digitos

--Función para voltear un numero
reversa n = reverse (show n)


multiplica x y = x * y


--palindromo = let list1 = [100..999]

fib :: Integer -> Integer
fib n = if (n > 1)
        then fib (n-1) + fib (n-2)
        else 1