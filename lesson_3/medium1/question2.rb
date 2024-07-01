# puts "the value of 40 + 2 is " + (40 + 2)

# The TypeError is due to the attempt to concatenate a string with an integer.
# If the (40 + 2) was converted into a string, the code would work.

# To correct this, we could do...

puts "the value of 40 + 2 is " + (40 + 2).to_s

# or...

puts "the value of 40 + 2 is #{40 + 2}"