# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples(n)
  (1...n).select{ |n| n % 3 == 0 || n % 5 == 0 }.inject(:+)
end

def sum_of_multiples_rec (n)
  return 0 if n <= 0
  if n % 3 == 0 || n % 5 == 0
    n + sum_of_multiples_rec(n - 1)
  else
    sum_of_multiples_rec(n-1)
  end
end

puts sum_of_multiples(10)
puts sum_of_multiples(1000)

puts sum_of_multiples_rec(9)
puts sum_of_multiples_rec(999)
