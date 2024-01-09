# a method that takes an array of strings and returns a string that is all those strings concatenated together

# Casual

Given an array of strings.

Iterate through the array.

Concatenate the strings beginning with [0] and ending at the last index

Print the concatenated sentence


# Formal

START

# Given an array of strings

SET arr = array of strings
SET counter = 0
SET string_array = ''
SET delimiter = " "

WHILE counter < arr length
  SET string_array = string_array + arr[counter] + delimiter
  counter = counter + 1 

PRINT string_array 

END