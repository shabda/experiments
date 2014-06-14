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

factors = (number)	->
	(num for num in [1..number] when number % num == 0 and is_prime num)
	
console?.log factors(1001)	
	