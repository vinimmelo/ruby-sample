dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_names(somehash)
  somehash.keys
end


def get_area_code(somehash, key)
  somehash[key]
end


loop do
  puts "Please insert one of the cityes above"
  puts get_city_names(dial_book)
  print "City: "
  city = gets.chomp.downcase
  area_code = get_area_code(dial_book, city)
  if area_code.nil?
    puts "City invalid!!!"
  else
    puts "The area code is #{area_code}"
  end
  puts "Do you want to try again? (Y/N)"
  again = gets.chomp.downcase
  break if again != 'y'
end
