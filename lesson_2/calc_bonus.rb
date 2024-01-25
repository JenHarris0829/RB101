LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calc_bonus.yml')

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts("=> #{message}")
end

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  word = case op
              when '1'
                prompt(messages('op1', LANGUAGE))
              when '2'
                prompt(messages('op2', LANGUAGE))
              when '3'
                prompt(messages('op3', LANGUAGE))
              when '4'
                prompt(messages('op4', LANGUAGE))
              end
  word
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = gets.chomp.strip

  if name.empty?
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt(messages('hello', LANGUAGE) + "#{name}!")

loop do
  number1 = ''
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = gets.chomp.strip

    if valid_number?(number1)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = gets.chomp.strip

    if valid_number?(number2)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end


  prompt(messages('operator', LANGUAGE))

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('must_choose', LANGUAGE))
    end
  end

  prompt(operation_to_message(operator))


    result =  case operator
              when '1'
                number1.to_f + number2.to_f
              when '2'
                number1.to_f - number2.to_f
              when '3'
                number1.to_f * number2.to_f
              when '4'
                number1.to_f / number2.to_f
              end

  prompt(messages('result', LANGUAGE) + "#{result}")

  prompt(messages('go_again', LANGUAGE))
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt(messages('goodbye', LANGUAGE))