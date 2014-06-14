
String.prototype.reverse = -> @split("").reverse().join("")

is_palindrome = (set) ->
    [a, b, num] = set
    num = ''+num 
    num == num.reverse()
    
candidates = [999..100]
all = []
for el1 in candidates
    for el2 in candidates
        all.push([el1, el2])
all = ([el[0], el[1], el[0]*el[1]] for el in all)
all = all.filter(is_palindrome).sort((a, b) -> a[2]-b[2])
console.log all[all.length-1]

