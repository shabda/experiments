function is_even(num)
    return (num % 2) == 0
end

x, y = 1, 2
fibs = [1]
last = 4000000
while y < last
  push!(fibs, y)
  x, y = y, x + y
end
fibs = filter(is_even, fibs)
println(sum(fibs))
