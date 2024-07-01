# input: word or multiple words
# output: the number of characters (spaces do not count)
# chars method the words up by characters into an array and count the elements and
# return the number of elements

puts "Please write a word or multiple words: "
words = gets.chomp.strip
char_num = words.delete(' ').length

puts "There are #{char_num} characters in '#{words}'."