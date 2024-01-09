# a method takes 2 arrays of numbers and returns the result of merging the arrays
# elements of 1st array should become the elements at the even indexes in returned array
# elements of 2nd array should become the elements at the odd indexes

# Casual
Given 2 arrays of integers with same amount of elements

Create new_array 

Iterate over 1st array
- merge into new_array 
- put 1st array integers into even indexes

Iterate over 2nd array 
- merge into new_array 
- put 2nd array integers into odd indexes

Return new_array 


# Formal
START

SET new_array = merge of array1 and array2

Iterate array1
  Select elements for index[0], [2], [4], etc in new_array 
Iterate array2
  Select elements for index[1], [3], [5], etc in new_array 

PRINT new_array
END