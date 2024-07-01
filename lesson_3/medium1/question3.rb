def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(0)

# Bonus 1
# The purpose of the number % divisor == 0 is to ensure that the number is a
# whole integer

# Bonus 2
# The purpose of the variable 'factors' being on line 8 is so that it is the
# return value of the method