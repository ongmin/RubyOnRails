def crazy_sum(numbers)

sum = 0
numbers.each_with_index { |val, index| sum += (val*index) }
# OR numbers.each_with_index do |val, index| sum += (val*index) end

return sum

end

puts crazy_sum([2, 3, 5])
