x = 1
function get_lcm(n)
  x += 1
  println(x)
  all_div = true
  for el in [1:n]
    if !(x%el==0)
      all_div = false
    end
  end
  if all_div
    println(x)
    return x
  end
end
get_lcm(20)
