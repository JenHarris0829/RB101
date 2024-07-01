a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Variable a points to the integer 42. Variable b points to the integer 42.
# Variable c points to a, which points to the integer 42. Since integers are
# immutable objects, the integer 42 will have the same object ID for each
# variable, which is 85.
