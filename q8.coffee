#lets get all the a+b+c = 1000 combination
combos = []
for a in [1...1000]
    for b in [1...1000-a]
        c = 1000 - (a+b)
        combos.push([a, b, c])

get_pythegerous = (iterable) ->
    for el in iterable
        [a, b, c] = el
        if a > b and a > c
            [largest, x, y] = [a, b, c]
        else if b > c
            [largest, x, y] = [b, a, c]
        else
            [largest, x, y] = [c, a, b]
        if largest * largest == x * x + y * y
            return [largest, x, y]
    
        
        

#console.log combos[1000..1100]
console.log get_pythegerous (combos)