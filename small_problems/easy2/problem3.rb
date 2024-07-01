# create a tip calculator
# input: bill amount and tip rate
# calculate tip
# output: tip and total amount of bill
=begin
puts "Enter the bill amount: "
bill_amount = gets.chomp.strip.to_f

puts "Enter the tip percentage: "
tip_percentage = gets.chomp.strip.to_f

tip = (bill_amount * (tip_percentage / 100)).round(2)
total_bill = (bill_amount + tip).round(2)

puts "The tip is $#{tip}."
puts "The total bill is $#{total_bill}."
=end

# Further Exploration -----------------------------------------------
puts "Enter the bill amount: "
bill_amount = gets.chomp.strip.to_f

puts "Enter the tip percentage: "
tip_percentage = gets.chomp.strip.to_f

tip = (bill_amount * (tip_percentage / 100)).round(2)
total_bill = (bill_amount + tip).round(2)

def formatting_decimals(num)
  format("%.2f", num)
end

puts "The tip is $#{formatting_decimals(tip)}."
puts "The total bill is $#{formatting_decimals(total_bill)}."