#!/usr/bin/env ruby
#@vinimmelo

lines = []

File.open("reviews.txt", 'r') do |file|
  lines = file.readlines
end


relevant_lines = lines.find_all { |line| line.include? "Truncated"}
reviews = relevant_lines.reject { |line| line.include? "--"}

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives
