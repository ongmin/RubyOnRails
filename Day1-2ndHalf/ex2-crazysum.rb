def crazy_sum(numbers)

sum = 0
numbers.each_with_index { |val, index| sum += (val*index) }

return sum

end

puts crazy_sum([2, 3, 5])
