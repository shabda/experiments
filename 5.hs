sqrt2 x = floor(x ** 0.5)

isPrime :: Integer->Bool
isPrime 1 = False
isPrime num = null [x | x <- [2..sqrt2 (fromIntegral num)], mod num x == 0]

primes = filter isPrime [1..20]
mult = foldr (*) 1 primes
nlast = foldr (*) 1 [1..20]


isDivisible num range = null [x | x <- range, not (mod num x == 0)]
isNotDivisible num range = not (isDivisible num range)

isNotDivisible20 num = isNotDivisible num [1..20]


f = [mult * x | x <- [1..], mult * x < nlast] 

output = last (takeWhile isNotDivisible20 f)
