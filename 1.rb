sum = 0
1000.times do |i|
  if i % 3 == 0 or i % 5 ==0
    sum = sum + i
  end
end

puts sum
    