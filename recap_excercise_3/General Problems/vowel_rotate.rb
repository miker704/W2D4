# vowel_rotate
# Write a method vowel_rotate(str) 
# that accepts a string as an arg and returns the 
# string where every vowel is replaced with the vowel that appears 
# before it sequentially in the original string. The first vowel of 
# the string should be replaced with the last vowel.


def vowel_rotate(str)
    vowels="aeiou"
    res=str[0..-1]
    vowel_idx=(0...str.length).select{|i| vowels.include?(str[i])}
    new_vowels=vowel_idx.rotate(-1)
    vowel_idx.each_with_index do |vowel,i|

        res[vowel]=str[new_vowels[i]]

    end
    return res
end


# Examples
p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges')       # => "erongas"
p vowel_rotate('headphones')    # => "heedphanos"
p vowel_rotate('bootcamp')      # => "baotcomp"
p vowel_rotate('awesome')       # => "ewasemo"