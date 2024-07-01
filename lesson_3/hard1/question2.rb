greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# The output of line 6 will be "hi there" and the return value will be
# {a: "hi there"}. The variable "greetings" is assigned to the hash {a: 'hi'}.
# The variable informal_greeting is assigned to the hash assigned to the variable
# greetings. informal_greeting then appends the string 'there' to the hash
# referenced by greetings. Since this is a mutation, the hash object referenced
# by greetings and informal_greeting is changed. Therefore, when greetings is
# called, it outputs the mutated string inside of the hash and the return value
# is the mutated hash.