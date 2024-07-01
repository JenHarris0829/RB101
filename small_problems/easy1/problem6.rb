# method takes positive integer (validate positive int) as argument
# output is right triangle with hypotenuse from lower left to upper right
# triangle made with `n` stars

def triangle(n)
  n.times {|x| puts ('*' * (x + 1)).rjust(n)}
end

triangle(5)
triangle(9)


# Further Exploration

def se_right_angle(n)
  n.times {|x| puts ('*' * (x + 1)).rjust(n)}
end

def sw_right_angle(n)
  n.times {|x| puts ('*' * (x + 1)).ljust(n)}
end

def ne_right_angle(n)
  n.times {|x| puts ('*' * (n - x)).rjust(n)}
end

def nw_right_angle(n)
  n.times {|x| puts ('*' * (n - x)).ljust(n)}
end

se_right_angle(3)
sw_right_angle(7)
nw_right_angle(4)
ne_right_angle(9)