=begin
# truncate
def print_in_box(str)
  box_length = str.length

  if box_length >= 80
    arr = str.chars
    str = arr.values_at(0..79).join
    box_length = 80
  end

  horizontal = "+#{'-' * (box_length + 2)}+"
  vertical = "|#{' ' * (box_length + 2)}|"

  puts horizontal
  puts vertical
  puts "| #{str} |"
  puts vertical
  puts horizontal
end

print_in_box("My dog is the goodest boy. He follows me everywhere, licks up all my food spills, and loves to snuggle on the couch.")
# print_in_box("To boldly go where no one has gone before.")
=end

# wrap
def print_in_box(str)
  wrap = str.size > 76

  phrase1 = ''
  phrase2 = ''
  phrase3 = ''

  if wrap
    phrase1 = str[0..75]
    phrase2 = str[76..151]
    phrase3 = str[152..229]
  end

  horizontal = "+#{'-' * (phrase1.size + 2)}+"
  vertical = "|#{' ' * (phrase1.size + 2)}|"

  puts horizontal
  puts vertical
  puts "| #{phrase1} |"
  if wrap
    puts "| #{phrase2}#{'' * (phrase2.size - phrase1.size)} |"
  end
  if wrap
    puts "| #{phrase3}#{'' * (phrase2.size - phrase3.size)} |"
  end
  puts vertical
  puts horizontal
end

print_in_box("My dog is the goodest boy. He follows me everywhere, licks up all my food spills, and loves to snuggle on the couch. He loves to fetch a ball, roll in stinky smells, and sleep for many hours a day.")
# print_in_box("To boldly go where no one has gone before.")

=begin
--> truncate
only read and display first (80 - 4) within the banner

--> wrap
total length of banner is length of message + 4
if total length > 80, cut it up using string methods or array methods
read and display (80 - 4) characters from the message
pick up from the 81st character, read and display next (80 - 4) characters
continue until end of message reached
=end