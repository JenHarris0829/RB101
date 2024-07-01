name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Will print:
# BOB
# BOB

# In this snippet, the variable `name` is assigned to the string 'Bob'. On line 2,
# the variable `save_name` is also assigned to the string 'Bob'. On line 3, the
# variable `name` is called by the method `upcase!`, which makes all of the letters
# in the string 'Bob' be uppercased. Since `save_name` also points to `name`, it will
# also print an uppercased string of 'Bob'.