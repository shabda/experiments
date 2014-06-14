sqrt2 x = floor(x ** 0.5)

isPrime :: Integer->Bool
isPrime num = null [x | x <- [2..sqrt2 (fromIntegral num)], mod num x == 0]

factors num = [x | x <- [2..floor( (fromIntegral num) *0.5)], mod num x == 0]
output = max (filter isPrime (factors 600851475143))