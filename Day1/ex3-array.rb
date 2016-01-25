# my_array = [*1..100]

array = (1..100).to_a
puts "\n Array: #{array}"

array2 = array.select { |num| num % 3 == 0 }
puts "\n Answer A: #{array2}"

array3 = array.select { |num| (num % 2 == 0) && (num % 3 != 0) }
puts "\n Answer B: #{array3}"

array4 = array - (array2 + array3)
puts "\n Answer C: #{array4}"
