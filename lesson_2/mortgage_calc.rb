require 'yaml'
MESSAGES = YAML.load_file('mortgage_calc.yml')
MONTHS_IN_YEAR = 12
ANSWERS = {
  true => ['y', 'yes'],
  false => ['n', 'no']
}

# Methods
def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts "=> #{message}"
end

def clear
  system('clear')
end

def display_name
  name = ' '
  loop do
    name = gets.chomp.strip.capitalize
    if name.empty?
      prompt(messages('invalid_name'))
    else
      prompt(messages('hello') << name << '!')
      return name
    end
  end
end

def validate_num(input)
  input.to_i.to_s == input || input.to_f.to_s == input
end

def valid_more_than_equal_to0(input)
  input.to_f >= 0.00
end

def validate_more_than0(input)
  input.to_f > 0.00
end

def trailing_zero!(input)
  if input != '0' && input[-1 && -2] == '0' && input.include?('.')
    loop do
      input.chop!
      if input[-1 && -2] != '0'
        break
      end
    end
  end
  input
end

def get_loan
  get_loan = ' '
  loop do
    prompt(messages('loan_amount'))
    get_loan = gets.chomp.delete("$", ",")
    trailing_zero!(get_loan)
    formatting_decimals(get_loan)

    if validate_num(get_loan) && valid_more_than_equal_to0(get_loan)
      break
    else
      prompt(messages('invalid_input'))
    end
  end
  get_loan.to_f
end

def get_apr
  get_apr = ' '
  loop do
    prompt(messages('apr'))
    get_apr = gets.chomp.delete("%")
    trailing_zero!(get_apr)

    if validate_num(get_apr) && valid_more_than_equal_to0(get_apr)
      break
    else
      prompt(messages('invalid_apr'))
    end
  end
  get_apr.to_f
end

def get_loan_term
  get_loan_term = ' '
  loop do
    prompt(messages('loan_duration'))
    get_loan_term = gets.chomp

    if validate_num(get_loan_term) && validate_more_than0(get_loan_term)
      break
    else
      prompt(messages('invalid_input'))
    end
  end
  get_loan_term.to_f * MONTHS_IN_YEAR
end

def calculate_monthly(get_loan, get_apr, get_loan_term)
  mpr = (get_apr.to_f / 100) / MONTHS_IN_YEAR

  if get_apr.zero?
    get_loan.to_f / get_loan_term.to_f
  else
    get_loan.to_f * ((mpr.to_f) / (1 - ((1 + mpr.to_f)**(-get_loan_term.to_f))))
  end
end

def formatting_decimals(num)
  format("%.2f", num.to_f)
end

def formatting_percent(num)
  format('%.2f %%', num.to_f)
end

def summarize_data(loan, apr, loan_months)
  prompt(messages('summary'))
  sleep 0.5
  prompt(messages('loan_total') << '$' << formatting_decimals(loan.to_s))
  prompt(messages('apr_summary') << formatting_percent(apr.to_s))
  prompt(messages('loan_months') << loan_months.to_s)
end

def go_again?
  answer = ' '
  loop do
    prompt(messages('go_again'))
    answer = gets.chomp.downcase

    if ANSWERS[true].include?(answer)
      return true
    elsif ANSWERS[false].include?(answer)
      return false
    else
      prompt(messages('try_again'))
    end
  end
end

# Start of Calculator
clear
prompt(messages('greeting'))

display_name

loop do
  loan = get_loan
  clear

  apr = get_apr
  clear

  loan_months = get_loan_term
  clear

  summarize_data(loan, apr, loan_months)
  monthly_payment = calculate_monthly(loan, apr, loan_months)
  monthly_payment = formatting_decimals(monthly_payment)
  prompt(messages('monthly_payment') << '$' << monthly_payment.to_s << '.')

  break unless go_again?
  clear
end

prompt(messages('goodbye'))
