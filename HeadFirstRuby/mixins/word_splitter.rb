# This class allows you to perform various operations
# on the words in a string.

class WordSplitter

  # The string to split into words.
  attr_accessor :string

  include Enumerable

  # Creates a new instance with its string
  # attribute set to the given string.
  def initialize(string)
    self.string = string
  end

  # Passes each word in the string to a block, one
  # at a time.
  def each
    string.split(" ").each do |word|
      yield word
    end
  end

end


splitter = WordSplitter.new
splitter.string = "one two three four"

splitter.each do |word|
  puts word
end

splitter = WordSplitter.new
splitter.string = "how do you do"

p splitter.find_all { |word| word.include?("d") }
p splitter.reject { |word| word.include?("d") }
p splitter.map { |word| word.reverse }

p splitter.any? { |word| word.include?("e") }
p splitter.count
p splitter.first
p splitter.sort
