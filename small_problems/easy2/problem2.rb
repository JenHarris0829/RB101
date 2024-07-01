# user input for length and width of a room in meters
# output: area of room in square meters and square feet
# 1 square meter == 10.7639 feet
# don't need to validate input
=begin
puts "Enter the length of the room in meters: "
length = gets.chomp.strip.to_i

puts "Enter the width of the room in meters: "
width = gets.chomp.strip.to_i

area_meters = (length * width).round(2)
area_feet = (area_meters * 10.7639).round(2)

puts "The area in square meters is #{area_meters}."
puts "The area in square feet is #{area_feet}."
=end

# Further Exploration

puts "Enter the length of the room in feet: "
length = gets.chomp.strip.to_i

puts "Enter the width of the room in feet: "
width = gets.chomp.strip.to_i

area_sq_feet = (length * width).round(2)
area_sq_inches = (area_sq_feet * 12).round(2)
area_sq_cm = (area_sq_inches * 2.54).round(2)

puts "The area in square feet is #{area_sq_feet}."
puts "The area in square inches is #{area_sq_inches}."
puts "The area in square centimeters is #{area_sq_cm}."