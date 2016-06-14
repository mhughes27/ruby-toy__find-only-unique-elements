# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)
  
#Algorithmic Process
#Create an array that includes elements without the repeats
#Create a hash that pairs each element of the new array with how many times it appears in the original array
#Any key-value pair that has 1 for a value is unique and gets placed in the desired array
  
new_hash = {}
arr.each do |x|
    new_hash[x] = 0 if new_hash[x].nil?
    new_hash[x] = new_hash[x] + 1
end

new_hash.delete_if {|key, value| value != 1}
new_hash.each.key {|key| puts key}

end
