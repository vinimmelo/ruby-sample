#!/usr/bin/env ruby

require_relative 'wordlist'

Dir['assets/idea-*.txt'].each do |file_name|
  idea = File.read(file_name)
  CODE_WORDS.each do |real, code|
    idea.gsub!(code, real)
  end
  puts idea
end
