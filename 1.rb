sum = 0
1000.times do |i|
  if i % 3 == 0 or i % 5 ==0
    sum = sum + i
  end
end

puts sum

puts (1..1000).to_a.select {|x| x%3==0 or x%5==0}.inject(0){|b,i| b+i}

    