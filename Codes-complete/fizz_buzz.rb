# Created on Nov 01
#
# @author: vinimmelo
#
# FizzBuzz test!

for x in 1..100
  if x % 3 ==0 and x % 5 == 0
    puts 'FizzBuzz'
  elsif x % 3 == 0
    puts 'Fizz'
  elsif x % 5 ==0
    puts 'Buzz'
  else
    puts "#{x}"
  end
end
