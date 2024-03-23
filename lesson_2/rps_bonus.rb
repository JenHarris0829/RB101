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
    move = gets.chomp.downcase

    if valid_move?(move)
      break
    else
      prompt(messages('valid_choice'))
    end
  end
  move
end

def valid_move?(move)
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
  sleep 2
  clear
end

def increment_wins(player, computer, wins)
  if win?(player, computer)
    wins[:player] += 1
  elsif win?(computer, player)
    wins[:computer] += 1
  end
  clear
end

def reset_hash_values(wins)
  wins.replace({ player: 0, computer: 0 })
end

# Start of game
prompt(messages('begin'))
sleep 2
clear
prompt(messages('winning'))
sleep 2
clear
prompt(messages('game_rules'))
sleep 4
clear

loop do
  wins = { player: 0, computer: 0 }

  loop do
    user_move = get_move
    full_word = convert_abbrevs(user_move)

    computer_choice = COMPUTER_CHOICES.sample

    prompt("You chose: #{full_word}; Computer chose: #{computer_choice}")

    display_results(full_word, computer_choice)

    increment_wins(full_word, computer_choice, wins)

    current_score_prompt = <<-MSG
    The current score is...
    player: #{wins[:player]}
    computer: #{wins[:computer]}
    MSG

    prompt(current_score_prompt)
    sleep 2
    clear

    break if wins[:player] == 3 || wins[:computer] == 3
  end

  prompt(messages('winner_player')) if wins[:player] == 3
  prompt(messages("winner_computer")) if wins[:computer] == 3

  prompt(messages('play_again?'))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  reset_hash_values(wins)

  clear
end

clear
prompt(messages('goodbye'))
