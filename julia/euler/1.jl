all = [1:999]
function is_mul_3_or_5(num)
    return (num % 3==0) || (num % 5 ==0)
end
println(sum(filter(is_mul_3_or_5, all)))
