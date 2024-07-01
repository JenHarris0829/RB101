# input: 6 numbers from user
# output: a message that says if the 6th number is amongst the first 5 numbers
# numbers to be stored in an array
# pop the last number out of the array
# iterate over the array and find any matches
# - .select
# - .include?

puts "Enter the 1st number: "
first_num = gets.chomp.to_i

puts "Enter the 2nd number: "
second_num = gets.chomp.to_i

puts "Enter the 3rd number: "
third_num = gets.chomp.to_i

puts "Enter the 4th number: "
fourth_num = gets.chomp.to_i

puts "Enter the 5th number: "
fifth_num = gets.chomp.to_i

puts "Enter the 6th number: "
sixth_num = gets.chomp.to_i

num_array = Array.new
num_array.push(first_num, second_num, third_num, fourth_num, fifth_num)

if num_array.include?(sixth_num)
  puts "The number #{sixth_num} appears in #{num_array}."
else
  puts "The number #{sixth_num} does not appear in #{num_array}"
end
