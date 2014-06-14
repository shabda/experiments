sum = (iterable) ->
	iterable.reduce((x, y) -> x+y)
	
console?.log Math.pow(sum([1..100]), 2) - sum((num*num for num in [1..100]))