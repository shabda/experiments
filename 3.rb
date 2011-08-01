def prime?(num)
  sqrt = (num ** 0.5).ceil
  (2..sqrt).each do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

def get_prime_factors(num)
  factors = []
  half = (num * 0.5).ceil
  (2..half).each do |i|
    if num % i == 0
      if prime?(i)
        factors << i
      end
    end
  end
  factors
end

def largest_prime_factor(num)
  get_prime_factors(num)[-1]
end

puts get_prime_factors(1000)
