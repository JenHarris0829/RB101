# method that returns true if integer argument is palindromic, false otherwise

def palindrome?(str)
  str == str.reverse
end

def palindromic_number?(num)
  palindrome?(num.to_s)
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)