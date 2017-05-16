=begin
1.From 1-100 find the square of each number
    Sum the square numbers
2.From 1-100 find the sum of the numbers
    Square that number
3.Calculate the difference
=end

sum_one = 0
square_of_each_number = (1..100).each do |x|
  y = x * x
  sum_one += y
end
puts sum_one


sum_square = 0
(1..100).each do |x|
  sum_square += x
end
puts sum_square

sum_two = sum_square * sum_square

total_sum = sum_two - sum_one

puts total_sum
