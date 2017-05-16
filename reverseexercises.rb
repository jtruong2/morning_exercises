=begin
1. convert the word in to an array of list_of_letters
2. iterate over the array counting down
3. store in new array
4. convert new array back to string
=end

word = "Watermelon"

list_of_letters = word.chars
index = list_of_letters.length - 1
new_array = []
counter = index

list_of_letters.each do |x|
  new_array.unshift(x)
end
puts new_array
