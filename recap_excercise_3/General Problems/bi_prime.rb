# bi_prime?
# Write a method bi_prime?(num) that accepts a number as an arg 
# and returns a boolean indicating whether or not the number is a 
# bi-prime. A bi-prime is a positive integer that can be obtained by
#  multiplying two prime numbers.

# For Example:

# 14 is a bi-prime because 2 * 7
# 22 is a bi-prime because 2 * 11
# 25 is a bi-prime because 5 * 5
# 24 is not a bi-prime because no two prime numbers have a product of 24

def bi_prime?(num)
    array=prime_Factors(num)
    return array.any?{|i| array.include?((num/i))}    
end

def is_Prime?(num)
    return false if num<2
    return (2...num).none?{|v| num%v==0}
end


def prime_Factors(num)
    return (2...num).select{|v| is_Prime?(v) && num%v==0}
end



# Examples
p bi_prime?(14)   # => true
p bi_prime?(22)   # => true
p bi_prime?(25)   # => true
p bi_prime?(94)   # => true
p bi_prime?(24)   # => false
p bi_prime?(64)   # => false