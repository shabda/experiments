[a, b] = [1, 2]
fibs = [1, 2]

loop
	[a, b] = [b, a+b]
	break if b > 4000000
	fibs.push(b)
even_fibs = (num for num in fibs when num % 2 == 0)	
sum = 0
for num in even_fibs
	sum += num

console?.log(sum)
