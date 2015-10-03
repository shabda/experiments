function is_palindrome(y)
  mid = int(length(y)/2)
  y[1:mid]==y[mid+1:length(y)]
end

multiples = [(0, 0)]
for x in [999:-1:1]
  for y in [999:-1:1]
   push!(multiples, (x, x))
  end
end

function higher_first(x)
  if x[1] > x[2]
    (x[1], x[2])
  else
    (x[2], x[1])
  end
end

# multiples = map(higher_first,multiples)
println(multiples)
