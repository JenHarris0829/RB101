# method that takes a number as an argument
# if number is positive, return the negative of that number
# if number is 0 or negative, return the original number

def negative(num)
  if num.positive?
    return -num
  else num == 0 || num.negative?
    return num
  end
end

puts negative(5)
puts negative(-3)
puts negative(0)

# Further Exploration ------------------------------------------------
def negative(num)
  number > 0 ? -number : number
end

def negative(num)
  -num.abs
end
