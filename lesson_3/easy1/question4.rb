numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
# will delete the element at index 1, which is integer 2
# returns numbers = [1, 3, 4, 5]
numbers.delete(1)
# will delete the element that matches, which is integer 1
# numbers = [2, 3, 4, 5]