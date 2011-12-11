sum = (iterable) ->
	summed = 0
	for i in iterable
		summed += i
	return summed
	
console?.log Math.pow(sum([1..100]), 2) - sum((num*num for num in [1..100]))