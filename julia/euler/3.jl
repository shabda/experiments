square_rt = x -> x ^ 0.5
num = 600851475143
function is_prime_factor(y)
  (600851475143 % y == 0) && isprime(int(y))
end


possible_factors = [2:ceil(square_rt(num))]
println(filter(is_prime_factor, possible_factors)[end])
