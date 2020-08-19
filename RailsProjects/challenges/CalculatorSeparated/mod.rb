puts "Simple calculator - Modulo"

25.times { print "-" }
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp

puts "The first number modulo by the second number is #{num_1.to_f % num_2.to_f}"
