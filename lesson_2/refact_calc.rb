def prompt(message) 
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end 

def operation_to_message(op)
  case op 
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end   
end   

prompt("Welcome to Calulator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()
  
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end   
end

prompt("Hi #{name}!")

loop do 
  number1 = ''
  loop do 
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp
  
    if valid_number?(number1)
      break
    else  
      prompt("Hmm...that doesn't look like a valid number")
    end  
  end 
  
  number2 = ''
  loop do 
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    
    if valid_number?(number2)
      break
    else
      prompt("Hmm...that doesn't look like a valid number")
    end  
  end 
  
  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  
  prompt(operator_prompt) 
  
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end   
  end
  
  prompt("#{operation_to_message(operator)} the two numbers...")
  
  result = case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_i * number2.to_i
            when '4'
              number1.to_f / number2.to_f
  end             
  prompt("The result is #{result}")
  
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets.chomp
  break unless answer.downcase().start_with?('y')
end   

prompt("Thank you for using the calculator. Good bye!")


# Things to think about:
# 1. Validate using .integer? method in the valid_number? definition
# 2. .to_f returns the leading numbers in a string as a floating point number.
#    Any extra characters after a valid number are ignored. If no valid number
#    at the beginning of the string, will return 0.0. Never raises an exception.
#
#   .to_i returns the leading characters in a string as an integer base. Extra
#   characters after a valid number are ignored. If no valid number at the start
#   of the string, returns 0. Never raises an exception when base is valid.
# 3. If some code needed to be added after the case statement, we could convert
#    the when statements to hashes, like op = {1: 'Adding', 2: 'Subtracting', etc}
#    This allows the information to be accessed and lets more code be written after.
# 4. Done
# 5. We can omit the Kernel. because Kernel is a module, in which every Ruby object
#    can access. Therefore, it is not necessary to constantly use Kernel. in front
#    of a method because it is implicitly implied to already exist.
# 6. Yes, a key to a separate file containing the messages would be useful. This
#    could be done using File.open in the block it is needed in.