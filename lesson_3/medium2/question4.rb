def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# The tricky_method_two method definition takes two arguments: a_string_param and
# an_array_param. When the method is called, the string "pumpkins"
# is concatenated with 'rutabaga' via the shovel method. an_array_param is
# assigned to the array ['pumpkins', 'rutabaga'].
#
# The display will show "My string looks like this now: pumpkinsrutabaga" and "My
# array looks like this now: ["pumpkins"]".