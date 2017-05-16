=begin
1. input length in years; output every leap_year in between
2. IF divisible by 400 && NOT divisible by 100 && divisible by 4
  is_a_leap_year = true
=end


def leap_year(length)
  current_year = 2017
  leap_year_list = []
  while current_year < length
    if current_year % 4 == 0
        leap_year_list.push(current_year)
    end
    current_year += 1
  end
  leap_year_list.map! do |x|
    if x % 100 == 0 && x % 400 != 0
      leap_year_list.delete(x)
    end
  end
  leap_year_list.compact
end

num = leap_year(4017)
require 'pry';binding.pry
