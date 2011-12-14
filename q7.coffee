
sieve = (n) -> 
    numbers = [0..n]
    primes = ([el, true] for el in numbers)
    current_prime = 2
    loop
        mark_non_primes(current_prime, primes)
        current_prime = get_next_prime(current_prime, primes)
        break if not current_prime
    primes = (el[0] for el in primes when el[1])[2..]

get_next_prime = (current_prime, primes) ->
    i = current_prime+1
    loop
        if i >= primes.length
            return 
        if primes[i][1]
            return primes[i][0]
        i++





mark_non_primes = (prime, iterable) ->
    i = prime
    loop
        i = i + prime
        break if i >= iterable.length
        iterable[i][1] = false
        
        

out = sieve(2000000)        
console.log out[10000]
console.log out.length

