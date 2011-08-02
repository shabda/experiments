sumOfSquares num = sum [x*x|x<-[1..num]]

squareOfSum num = sum([x|x<-[1..num]]) * sum([x|x<-[1..num]])

output = squareOfSum(100) - sumOfSquares(100)