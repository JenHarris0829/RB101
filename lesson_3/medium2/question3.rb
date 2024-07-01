def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

# Inside of the tricky_method definition, string_param_one is written in shorthand
# to mean: string_param_one = string_param_one + "rutabaga", which is
# string_param_one concatenated to the string "rutabaga". string_param_two is
# concatenated via the shovel operator to the string "rutabaga".
#
# Therefore, the code on line 10 will display "String_arg_one looks like this
# now: pumpkins" because the variable string_arg_one was not mutated by the
# caller. String_param_one was reassigned to "pumpkinsrutabaga".
# The code on line 11 will display "String_arg_two looks like this now:
# pumpkinsrutabaga" because the variable string_arg_two was mutated by the caller
# and appended to the string "pumpkins".