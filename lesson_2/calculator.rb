# Requirements
# 1. asks for 2 numbers
# 2. asks for the types of operation: +, -, *, /
# 3. perform the operation on the 2 numbers
# 4. displays result

#answer = Kernel.gets()
#Kernel.puts(answer)

Kernel.puts("Welcome to Calulator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")
