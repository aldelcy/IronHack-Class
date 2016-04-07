require_relative "lib/word_chain.rb"

puts"What is your starting word?"
word1 = gets.chomp

puts"What is your final word?"
word2 = gets.chomp

# puzzle1 = WordChain.new(word1,word2)
puzzle1 = WordChain.new("cat","dog")


