numbers = (num for num in [1..1000] when num % 3==0 or num % 5 ==0)
sum = 0
for num in numbers
	sum += num
console?.log sum
