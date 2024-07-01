# create a method that returns true if string passed as argument is palindrome
# return false if not palindrome
# case insensitive and ignore all non alpha-numeric characters

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(input)
  input = input.downcase.delete('^a-z0-9')
  palindrome?(input)
end

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')

# needed help to solve...need to redo