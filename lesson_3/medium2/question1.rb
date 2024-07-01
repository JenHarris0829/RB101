a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Variable a points to the string object "forty two". Variable b points to the
# string object "forty two". Variable c points to variable a, which points to
# the string object "forty two". Therefore, the output will be:
# a.object_id => an ID
# b.object_id => a separate ID since it is not pointing at a
# c.object_id => same ID as a