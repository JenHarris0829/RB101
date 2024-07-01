limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"


# When the code is run, a NameError is risen for the variable 'limit' on line 4
# This is because the variable 'limit' initialized on line 1 is not accessible
# to the while loop that is initialized on line 4. To fix this, the variable
# 'limit' should be passed as an argument to the fib method so it can be used in the
# scope of the while loop, and also passed in when fib is called