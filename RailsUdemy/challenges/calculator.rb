puts "Simple calculator - Division"

puts "Enter 1 for division, 2 for mod, 3 for multiplication, 4 for subtraction, 5 for sum or 0 to exit the program"
user_entry = gets.chomp.to_i

if user_entry == 0
  exit 1
end

25.times { print "-" }
puts
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp

def multiply(first_num, second_num)
  first_num.to_i * second_num.to_i
end

def sum(first_num, second_num)
  first_num.to_i + second_num.to_i
end

def division(first_num, second_num)
  first_num.to_i / second_num.to_i
end

def subtraction(first_num, second_num)
  first_num.to_i - second_num.to_i
end

def mod(first_num, second_num)
  first_num.to_i % second_num.to_i
end

if user_entry == 1
  puts "The first number divided by the second number is #{division num_1, num_2}"
elsif user_entry == 2
  puts "The first number mod by the second number is #{mod num_1, num_2}"
elsif user_entry == 3
  puts "The first number multiplied by the second number is #{multiply num_1, num_2}"
elsif user_entry == 4
  puts "The first number subtracted by the second number is #{subtraction num_1, num_2}"
elsif user_entry == 5
  puts "The first number sumed by the second number is #{sum num_1, num_2}"
end
