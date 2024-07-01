# input: 2 positive integers
# output: results of adding, subtracting, multiplying, dividing, remainder, and
# to the power of
# do not need to validate input

puts "Enter the first number: "
first_num = gets.chomp.to_i

puts "Enter the second number: "
second_num = gets.chomp.to_i

add = first_num + second_num
subtract = first_num - second_num
multiply = first_num * second_num
divide = first_num / second_num
remainder = first_num % second_num
power = first_num ** second_num

puts "#{first_num} + #{second_num} = #{add}"
puts "#{first_num} - #{second_num} = #{subtract}"
puts "#{first_num} * #{second_num} = #{multiply}"
puts "#{first_num} / #{second_num} = #{divide}"
puts "#{first_num} % #{second_num} = #{remainder}"
puts "#{first_num} ** #{second_num} = #{power}"

# If second number is 0, will throw an error for the division. Could create
# a validation method to prevent 0 from being entered.
# If used floats instead of integers, it would print each whole number with a
# decimal followed by a trailing zero. For the exponent, it would print the
# number using a decimal and e+ ___

# Could have used the inject method and stored the operators in an array