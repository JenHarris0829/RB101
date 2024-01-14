def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)


# Will print [4, 5, 3, 6]
# Uses default positional arguments so 4 goes to the a position,
# 6 goes to the d position, 5 overrides the b position value, and
# 3 automatically goes to c since it does not set to any of the values