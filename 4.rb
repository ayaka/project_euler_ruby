#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

def palindromic_number 
  largest_palindrome = 0
  (100..999).each do |n1|
    (100..999).each do |n2| 
      product = n1 * n2
      largest_palindrome = product if product.to_s == product.to_s.reverse && product > largest_palindrome
    end
  end
  largest_palindrome
end

def palindromic_number_rec(n1 = 10, n2 = 10, largest_palindrome = 0)
  return largest_palindrome if n1 == 100 && n2 == 99
  if n1 == 100
    n1 = 10
    n2 += 1
  end
  product = n1 * n2
  largest_palindrome = product if product.to_s == product.to_s.reverse && product > largest_palindrome
  palindromic_number_rec(n1 + 1, n2, largest_palindrome)
end

# three digit version
puts palindromic_number

# two digit version
puts palindromic_number_rec