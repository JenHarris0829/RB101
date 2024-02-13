# PEDAC
#
# Problem
# -make a mortage/car loan calculator
# -input:
#   1. loan amount
#   2. annual percentage rate (APR)
#   3. loan duration
# -need to calculate:
#   1. monthly interest rate
#      APR%/100= decimal, then decimal/12=monthly
#   2. loan duration in months (years * 12)
#   3. monthly payment
#     -use formula for monthly payment:
#      m = p * (j / (1 - (1 + j)**(-n)))
#
#       m is monthly payment
#       p is loan amount
#       j is monthly interest rate
#       n is loan duration in months
#       -use explicit names for each of these variables
#
# -explicitly ask for specific format for inputs, like 5 or 0.5 for 5%
# -APR needs to be converted into a monthly interest rate
# -choose explicit variable names for loan duration (months or years?)
# -check everything with Rubocop
# -check validity of each input --> real numbers? empty spaces?
# -ask if want to run calculator again
# -output:
#   monthly payment
#   how will amounts be shown? money symbols? which currency?
# -edge cases
#   negative numbers? "must enter positive integers" warning
#   zeros? check example #3
#
# Examples
# 1. loan amount = $400,000
#     APR = 3.5%
#     loan duration = 30 years
#
#     monthly interest rate = 3.5/100 = 0.035, 0.035/12 = 0.0029167
#     monthly loan duration = 30*12 = 360 months
#     monthly payment = 400000 * (0.0029167/(1-(1+0.0029167)**(-360)))
#                     = $1796
# 2. loan amount = $250,000
#     APR = 7.07%
#     loan duration = 15 years
#
#     monthly interest rate = 7.07/100 = 0.0707, 0.0707/12 = 0.005891
#     monthly loan duration = 15*12 = 180 months
#     monthly payment = 250000 * (0.005891/(1-(1+0.005891)**(-180)))
#                     = $2256.75
# 3. loan amount = $375,000
#     APR = 0.00%
#     loan duration = 30 years
#
#     monthly interest rate = 0.00
#     monthly loan duration = 360 months
#     monthly payment = 375000 * (0.00/(1-(1+0.00)**(-360)))
#                     = 375000 * (0/0) <--invalid division, will throw an error
#         **need to be able to calculate 375000/360 = $1041.67
#
# Data Structures
# -methods, loops, and strings
#
# Algorithm
# 1. Collect inputs, convert to floats
# 2. Validate all inputs
# 3. Calculate monthly interest rate with equation and save to mpr variable
# 4. Calculate monthly loan duration with equation and save to
#    monthly_loan_duration variable
# 5. Calculate monthly payment with equation and save to monthly payment
#    variable
# 6. Display result
# 7. Ask if want to use the calculator again

# Code

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

def get_name
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

def loan_amount
  loan_amount = ' '
  loop do
    prompt(messages('loan_amount'))
    loan_amount = gets.chomp.delete("$", ",")
    trailing_zero!(loan_amount)
    formatting(loan_amount)

    if validate_num(loan_amount) && valid_more_than_equal_to0(loan_amount)
      break
    else
      prompt(messages('invalid_input'))
    end
  end
  loan_amount.to_f
end

def annual_pr
  annual_pr = ' '
  loop do
    prompt(messages('apr'))
    annual_pr = gets.chomp.delete("%")
    trailing_zero!(annual_pr)

    if validate_num(annual_pr) && valid_more_than_equal_to0(annual_pr)
      break
    else
      prompt(messages('invalid_apr'))
    end
  end
  annual_pr.to_f
end

def loan_duration
  loan_duration = ' '
  loop do
    prompt(messages('loan_duration'))
    loan_duration = gets.chomp

    if validate_num(loan_duration) && valid_more_than_equal_to0(loan_duration)
      break
    else
      prompt(messages('invalid_input'))
    end
  end
  loan_duration.to_f
end

def monthly(loan_amount, annual_pr, loan_duration)
  mpr = (annual_pr.to_f / 100) / MONTHS_IN_YEAR
  months = loan_duration.to_f * MONTHS_IN_YEAR

  if months.zero?
    loan_amount
  elsif annual_pr.zero?
    loan_amount.to_f / months.to_f
  else
    loan_amount.to_f * ((mpr.to_f) / (1 - ((1 + mpr.to_f)**(-months.to_f))))
  end
end

def formatting(num)
  format("%.2f", num.to_f)
end

def summary(loan, apr, loan_months)
  prompt(messages('calculating'))
  sleep 0.5
  prompt(messages('summary'))
  sleep 0.1
  prompt(messages('loan_total') << '$' << formatting(loan.to_s) << '.')
  sleep 0.1
  prompt(messages('apr_summary') << apr.to_s << '%' << '.')
  sleep 0.1
  prompt(messages('loan_months') << loan_months.to_s << '.')
  sleep 0.1
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

get_name

loop do
  loan = loan_amount
  clear

  apr = annual_pr
  clear

  loan_months = loan_duration
  clear

  summary(loan, apr, loan_months)
  monthly_payment = monthly(loan, apr, loan_months)
  monthly_payment = formatting(monthly_payment)
  prompt(messages('monthly_payment') << '$' << monthly_payment.to_s << '.')

  break unless go_again?
  clear
end

prompt(messages('goodbye'))
