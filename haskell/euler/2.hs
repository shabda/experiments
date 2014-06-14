fibo :: Integer -> [Integer]
fibo 2 = [2, 1]
fibo n = [foldr (+) 0 (take 2 (fibo (n-1)))] ++ fibo(n-1)

iseven :: Integer -> Bool
iseven x = x `rem` 2 == 0

output = foldr (+) 0 (filter iseven (fibo 32))