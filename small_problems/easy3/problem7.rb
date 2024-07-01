# input: string argument; if palindrome, returns true; if not, returns false
# output: true or false
# case, punctuation, and spaces matter!
# data structures: string, array?
=begin
def palindrome?(str)
  if str == str.reverse
    true
  else
    false
  end
end

p palindrome?('madam')
p palindrome?("Madam")
p palindrome?("madam i'm adam")
p palindrome?("356653")
=end

# Further Exploration ----------------------------------------------
def palindrome?(arr)
  if arr == arr.reverse
    true
  else
    false
  end
end

p palindrome?([1, 2, 3, 3, 2, 1])
p palindrome?(["dog", "cat", "cat", "dog"])
p palindrome?([18, 23, 62, 5])

def palindrome?(input)
  input == input.reverse
end
# works for any input given