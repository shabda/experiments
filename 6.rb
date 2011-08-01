def sum_of_squares(till)
  terms = []
  (1..till).each do |i|
    terms << i * i
  end
  sum(terms)
end

def square_of_sum(till)
  total = sum(1..till)
  total * total
end

def sum(seq)
  total = 0
  seq.each do |i|
    total += i
  end
  total
end

puts square_of_sum(100) - sum_of_squares(100)



    
    
    