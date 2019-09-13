puts "Welcome to the authentication"
puts "-" * 25
puts "This program will take input from the user and compare password"

vini = { user: "vinicius", password: "archlinux" }

counter = 1
while true
  print "Username: "
  user = gets.chomp
  print "Password: "
  password = gets.chomp

  if user == vini[:user] and password == vini[:password]
    puts "Password correct!"
    puts vini
    exit 0
  end
  puts "Credentials were not correct"
  puts "Press n to quit or another key to continue"
  counter += 1
  prompt = gets.chomp

  if prompt == "n"
    exit 1
  elsif counter == 4
    puts "You exceed the attemptions."
    exit 1
  end
end
