# prime_factorization
# The Fundamental Theorem of Arithmetic states that every positive integer is either a
#  prime or can be represented as a product of prime numbers.

# Write a method prime_factorization(num) that accepts a number and returns 
# n array representing the prime factorization of the given number. This means that
#  the array should contain only prime numbers that multiply together to the given num. 
#  The array returned should contain numbers in ascending order. Do this recursively.


def prime_factorization(num)
        (2...num).each do |i|
            if num % i==0
                factor=num/i
                return [*prime_factorization(i),*prime_factorization(factor)]
            end
        end
        return [num]
end
# 12 [6,3]

# def is_Prime?(num)
#     return false if num<2
#     (2...num).none?{|v|num%v==0}
# end


# Examples
p prime_factorization(12)     # => [2, 2, 3]
p prime_factorization(24)     # => [2, 2, 2, 3]
p prime_factorization(25)     # => [5, 5]
p prime_factorization(60)     # => [2, 2, 3, 5]
p prime_factorization(7)      # => [7]
p prime_factorization(11)     # => [11]
p prime_factorization(2017)   # => [2017]