# P: either comp or user gets 3 wins, game ends
#    winner is grand winner
#    keep track of user's and computer's wins
#    no incrementing logic in display_results
#    simple methods, only one task
# E: edge cases?
# D: integers and strings
#    store wins in hash
#    wins => {comp: increment wins, user: increment wins}
#    pull results out of hash and display winner
# A: tell user they will play until there are 3 wins for either player
#    play game
#    store wins in hash with incrementation
#    once 3 wins for a player is reached, game ends
#    display who is grand winner and break code

require 'yaml'
MESSAGES = YAML.load_file('rps_bonus.yml')

VALID_INPUTS = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

COMPUTER_CHOICES = %w(rock paper scissors lizard spock)

WINNING_MOVES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['rock', 'scissors']
}

def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts("=> #{message}")
end

def clear
  system('clear')
end

def get_move
  move = ''
  loop do
    prompt(messages('enter_one'))
    sleep 3
    move = gets.chomp.downcase

    if valid_input?(move)
      break
    else
      prompt(messages('valid_choice'))
    end
  end
  move
end

def valid_input?(move)
  VALID_INPUTS.key?(move)
end

def convert_abbrevs(user_move)
  VALID_INPUTS.each do |abbrev, word|
    return word if abbrev == user_move
  end
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won this round!")
  elsif win?(computer, player)
    prompt("Computer won this round!")
  else
    prompt("It's a tie! No winners here!")
  end
end

def increment_wins(player, computer, wins)
  if win?(player, computer)
    wins[:player] += 1
  elsif win?(computer, player)
    wins[:computer] += 1
  end
end

def play_again?
  prompt(messages('play_again?'))
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

prompt(messages('begin'))
sleep 1
prompt(messages('winning'))
sleep 2
prompt(messages('game_rules'))
sleep 4

wins = { player: 0, computer: 0 }

loop do
  user_move = get_move
  full_word = convert_abbrevs(user_move)

  computer_choice = COMPUTER_CHOICES.sample

  prompt("You chose: #{full_word}; Computer chose: #{computer_choice}")

  display_results(full_word, computer_choice)
  sleep 2
  clear

  increment_wins(full_word, computer_choice, wins)
  sleep 2

  current_score_prompt = <<-MSG
  "The current score is...
  player: #{wins[:player]}
  computer: #{wins[:computer]}
  MSG

  prompt(current_score_prompt)

  if wins[:player] == 3
    prompt("Congratuations! You are the grand winner!")
    break unless play_again?
  elsif wins[:computer] == 3
    prompt("Computer is the grand winner! Better luck next time!")
    break unless play_again?
  end
end

clear
prompt(messages('goodbye'))
