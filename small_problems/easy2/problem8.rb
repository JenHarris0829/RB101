# input: integer > 0, if want sum or product of all numbers between 1 and integer
# validate numbers
# downcase s and p
# calculate sum or calculate product of numbers between 1 and given integer
# - sum = integer += 1
# - product = integer *= 1
# output: sum or product
=begin
loop do
  puts "Enter an integer greater than 0: "
  int = gets.chomp.to_i

  puts "Enter 's' to compute the sum or enter 'p' to compute the product: "
  input = gets.chomp.downcase

  if input == 's'
    sum = 0
    for i in (1..int)
      sum += i
      i += 1
    end
    puts "The sum of the integers between 1 and #{int} is #{sum}."
    break
  elsif input == 'p'
    product = 1
    for i in (1..int)
      product *= i
      i += 1
    end
    puts "The product of the integers between 1 and #{int} is #{product}."
    break
  else
    puts "Please enter a valid response."
  end
end
=end

# Further Exploration ---------------------------------------------
loop do
  puts "Enter an integer greater than 0: "
  int = gets.chomp.to_i

  puts "Enter 's' to compute the sum or enter 'p' to compute the product: "
  input = gets.chomp.downcase

  if input == 's'
    sum = (1..int).inject(:+)
    puts "The sum of the integers between 1 and #{int} is #{sum}."
    break
  elsif input == 'p'
    product = (1..int).inject(:*)
    puts "The product of the integers between 1 and #{int} is #{product}."
    break
  else
    puts "Please enter a valid response."
  end
end