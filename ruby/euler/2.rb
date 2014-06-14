def fibo(till)
  fibo = [1, 2]
  last = 2
  until last > till do
    new_last = fibo[-1] + fibo[-2]
    fibo << new_last
    last = new_last
  end
  fibo[0...-1]
end


    
sum = 0    
fibo(4000000).each do |i|
  if i % 2 == 0
    sum = sum + i
  end
end

puts sum
    
    