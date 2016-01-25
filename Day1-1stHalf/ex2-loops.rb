# # this is a loop:
# 10.times do |i|
#   puts i
# end
#
# # same as:
# 10.times { |i| puts i }


# My solution
count = 100

99.times do
  count -= 1
  if count > 1
    puts "#{count} bottles of beer on the wall. Take one down, pass it around,"

  elsif count == 1
    puts "1 bottle of beer on the wall, 1 bottle of beer. \nTake one down and pass it around, no more bottles of beer on the wall."
    puts "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
  end
end

# Alternative solution
# 99.downto(0) do |number_of_bottles|
#     if number_of_bottles > 0
#         puts "#{number_of_bottles} bottles of beer on the wall."
#     elsif number_of_bottles == 1
#         puts "#{number_of_bottles} bottle of beer on the wall."
#     else
#         puts "No more bottles of beer on the wall. :("
#     end
# end
