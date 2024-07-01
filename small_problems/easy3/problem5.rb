# use multiply method from problem 4 and write a method that computes the
# square of its argument

def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end

# Further Exploration -------------------------------------
def power(base, power)
  multiply(base, 1) ** power
end

p square(5)
p square(-8)

p power(5, 2)
p power(2, 4)
p power(4, 7)
p power(1.2, 3.2)
p power(3, -2)