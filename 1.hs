is_mult :: Integer -> Bool
is_mult x =  (x `rem` 3 == 0)  || (x `rem` 5 == 0)

output = foldr (+) 0 (filter is_mult [1..1000])