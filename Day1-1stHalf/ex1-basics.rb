p "Hello! What is your age?"
age = Integer(gets.chomp)

if age < 18
  puts "You are underaged!"
else
  puts "You are above 18!"
end
