# longest_streak
# Write a method longest_streak(str) that accepts a string as an arg.
#  The method should return the longest 
# streak of consecutive characters in the string. If there are any ties, 
# return the streak that occurs later in the string.

def longest_streak(str)
    res=""
    temp=""
    (0...str.length).each do |i|
        if str[i]==str[i-1] || i==0
            temp+=str[i]
        else
            temp=str[i]
        end
             res=temp  if temp.length>=res.length
        
    end
    
    return res
end


# Examples
p longest_streak('a')           # => 'a'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzz') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'
p longest_streak('abc')         # => 'c'