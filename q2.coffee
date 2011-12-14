[a, b] = fibs = [1, 2]

loop
	[a, b] = [b, a+b]
	break if b > 4000000
	fibs.push(b)
even_fibs = (num for num in fibs when num % 2 == 0)	
sum = even_fibs.reduce((x, y) -> x + y) 

console?.log(sum)
