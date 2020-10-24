require 'ripper'
require 'pp'

# Should show the generated tokens and symbols
code = <<STR
10.times do |n|
  puts n
end
STR
puts code
pp Ripper.lex(code)
