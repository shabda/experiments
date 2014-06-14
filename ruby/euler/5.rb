def prime?(num)
  if num == 2
    return true
  end
  sqrt = (num ** 0.5).ceil
  (2..sqrt).each do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

primes = []

(2..20).each do |i|
  primes << i if prime?(i)
end

mult =  1

primes.each do |prime|
  mult = mult * prime
end



def divisible_by_all(num, range)
  range.each do |i|
    if num % i != 0
      return false
    end
  end
  return true
end

current = mult

while not divisible_by_all(current, 1..20) do
  current = current + mult
end

puts current

