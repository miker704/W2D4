# no_consecutive_repeats?
# Write a method no_consecutive_repeats?(arr)
#  that accepts an array as an arg. The method
#  should return true if an element never appears
#  consecutively in the array; it should return false otherwise.

def no_consecutive_repeats?(arr)
  (0...arr.length).each do |ele|
    return false if arr[ele] == arr[ele + 1]
  end
  return true
end

# Examples
p no_consecutive_repeats?(%w[cat dog mouse dog])     # => true
p no_consecutive_repeats?(%w[cat dog dog mouse])     # => false
p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
p no_consecutive_repeats?(['x'])                              # => true
