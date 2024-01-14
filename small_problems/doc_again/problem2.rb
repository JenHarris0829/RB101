require 'date'

puts Date.civil
# -4172-01-01
puts Date.civil(2016)
# 2016-01-01
puts Date.civil(2016, 5)
# 2016-05-01
puts Date.civil(2016, 5, 13)
# 2016-05-13

# Date is a class
# civil is a class method that creates a date object denoting the given calendar date