#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

require "prime"

def largest_prime_factor (num)
  return num if num.prime?
  prime_factors = []
  Prime.each do |prime|
    return prime_factors.last if num == 1
    while num % prime == 0
      prime_factors << prime
      num /= prime
    end
  end
end

def largest_prime_factor_rec (num, largest = 0)
  return num if num.prime?
  prime_factor = Prime.find { |prime| num % prime == 0 }
  largest = prime_factor if prime_factor > largest
  num /= prime_factor
  return largest if num == 1
  largest_prime_factor_rec(num, largest)
end

puts largest_prime_factor(13195)
puts largest_prime_factor(600851475143)

puts largest_prime_factor_rec(13195)
puts largest_prime_factor_rec(600851475143)

