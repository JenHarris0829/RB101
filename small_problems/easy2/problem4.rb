# input: current age, age would like to retire
# calculate what year can retire at
# - years of work left == age to retire - current age
# - year of retirement == current year + age to retire
# output: current year, year of retirement, how many more years to work

puts "What is your current age? "
age = gets.chomp.strip.to_i

puts "At what age would you like to retire? "
retirement_age = gets.chomp.strip.to_i

current_year = Time.now.year

years_left_to_work = retirement_age - age
year_of_retirement = current_year + retirement_age

puts "It's #{current_year}. You will retire in #{year_of_retirement}."
puts "You have only #{years_left_to_work} years of work to go!"