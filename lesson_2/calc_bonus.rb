LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calc_bonus.yml')

# Methods
def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def language(key)
  message = messages(key, LANGUAGE)
  puts("=> #{message}")
end

def prompt(message)
  puts("=> #{message}")
end

def clear
  system('clear')
end

def get_name
  loop do
    name = gets.chomp.strip
    if name.empty?
      prompt(messages('valid_name', LANGUAGE))
    else
      return name
    end
  end
end

def get_number
  number = ' '
  loop do
    number = gets.chomp.strip

    break if valid_int_or_float?(number)
  end

  number.to_f
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

def valid_int_or_float?(input)
  integer?(input) || float?(input)
end

def calculate(operator, number1, number2)
  case operator
  when '1' then number1.to_f + number2.to_f
  when '2' then number1.to_f - number2.to_f
  when '3' then number1.to_f * number2.to_f
  when '4' then number1.to_f / number2.to_f
  end
end

def operation_to_message(op)
  case op
  when '1'
    prompt(messages('op1', LANGUAGE))
  when '2'
    prompt(messages('op2', LANGUAGE))
  when '3'
    prompt(messages('op3', LANGUAGE))
  when '4'
    prompt(messages('op4', LANGUAGE))
  end
end

# Start of Calculator
prompt(messages('welcome', LANGUAGE))

name = get_name
prompt(messages('hello', LANGUAGE) + name.to_s + '!')

loop do
  prompt(messages('first_number', LANGUAGE))
  number1 = get_number

  prompt(messages('second_number', LANGUAGE))
  number2 = get_number

  clear

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

  result = calculate(operator, number1, number2)
  prompt(messages('result', LANGUAGE) + result.to_s)

  prompt(messages('go_again', LANGUAGE))
  answer = gets.chomp
  break unless answer.downcase().start_with?('y' || 's')

  clear
end

prompt(messages('goodbye', LANGUAGE))
