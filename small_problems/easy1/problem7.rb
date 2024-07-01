# need input from user to obtain: noun, verb, adjective, and adverb
# user input needs to be validated
# each input will be interpolated into a sentence or story and printed to the screen

loop do
  puts "Welcome to MadLibs!"
  sleep 0.1

  puts "Please enter a noun: "
  noun = gets.chomp.strip

  puts "Please enter a verb in the past tense: "
  verb = gets.chomp.strip

  puts "Please enter an adjective: "
  adjective = gets.chomp.strip

  puts "Please enter an adverb: "
  adverb = gets.chomp.strip

  puts "The #{adjective} #{noun} #{verb} down the road #{adverb}! Nice one!"
  sleep 0.2

  puts "Would you like to play again? Enter Y to make another MadLib!"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end