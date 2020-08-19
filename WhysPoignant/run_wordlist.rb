require_relative 'wordlist'

puts "Enter your new idea: "
idea = gets.chomp
CODE_WORDS.each do |real, code|
  idea.gsub!( real, code )
end

puts "File encoded. Please enter a name for this idea: "
idea_name = gets.chomp
File::open("idea-#{idea_name}.txt", "w") do |f|
  f << idea
end
