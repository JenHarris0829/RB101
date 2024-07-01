# method takes string argument and returns true is all the ABC characters
# in the string are uppercase
# false otherwise
# non-alphabetic chracters should be ignored

def uppercase?(str)
  if str == str.upcase
    true
  else
    false
  end
end

p uppercase?('t')
p uppercase?('T')
p uppercase?('Four Score')
p uppercase?('FOUR SCORE')
p uppercase?('4SCORE!')
p uppercase?('')

# solved on my own :)