# no_dupes?
# Write a method no_dupes?(arr) that accepts an array as 
# an arg and returns an new array containing the elements 
# that were not repeated in the array.
def no_dupes?(arr)

#    hash=arr.inject(Hash.new(0)) do |hash,ele|
#         hash[ele]+=1
#         hash
#    end
#    array=[]
#    hash.each{|k,v|array<<k if v==1}
#    return array
    hash=Hash.new(0)
    arr.each{|i| hash[i]+=1}
    return hash.keys.select{|k| hash[k]==1 ? k : next}

end
# Examples
p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])            # => []