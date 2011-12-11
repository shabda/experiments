sqrt = (num)->
	Math.pow(num, 0.5)
is_prime = (num) ->
	if num == 2
		return true
	i = 2
	loop
		break if i > Math.ceil(sqrt(num))
		if num % i == 0
			return false
		i += 1
	return true
	
primes = (num for num in [1..20] when is_prime(num))
mult = (number) ->
	mul = 1
	for num in number
		mul *= num
	return mul
	
is_div_all = (number)->
	for i in [1..20]
		if not (number % i == 0)
			return false
	return true

min = mult(primes)
max = mult([1..20])
current = min
loop
	break if current >= max
	break if is_div_all(current)
	current += min
console?.log(current)


