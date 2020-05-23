#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_multiple(top_divisor)
  num = 1
  loop do
    return num if top_divisor.downto(1).all? { |divisor| num % divisor == 0 }
    num += 1
  end
end

def smallest_multiple_rec(top_divisor, num = 1)
  return num if (1..top_divisor).all? { |divisor| num % divisor == 0 }
  smallest_multiple_rec(top_divisor, num + 1)
end



puts smallest_multiple(10)

puts smallest_multiple_rec(10)

# hangs at 1 to 20 divisor range.  Need improvement.