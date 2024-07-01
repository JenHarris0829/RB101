# input: user's name
# output: greet user
# input: if "name!" then...
# output: yells back to user

puts "Hello! What is your name? (If you put an exclamation point, fun things will happen!): "
name = gets.chomp.strip

if name.include?("!")
  puts "HELLO, #{name.upcase}. WHY ARE WE SCREAMING?"
else name
  puts "Hello, #{name.capitalize}."
end