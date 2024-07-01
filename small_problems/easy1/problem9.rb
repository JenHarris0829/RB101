# create a method that takes a string argument and returns the middle character
# or characters of the argument
# if argument is odd length, return 1 character
# if argument is even, return 2 characters

# count number of characters
# put characters into array
# access middle character(s) using division

def center_of(str)
  length = str.length
  arr = str.chars

  if length.odd?
    arr[length / 2]
  else
    arr[length / 2 - 1] + arr[length / 2]
  end
end

center_of('I love ruby')
center_of('Launch School')
center_of('Launch')
center_of('Launchschool')
center_of('x')