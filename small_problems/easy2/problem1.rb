def age_generator
  age = Array(20..200)
  puts "Teddy is #{age.sample} years old!"
end

age_generator

# Further Exploration

def age_generator
  puts "Please enter a name: "
  name = gets.chomp.strip

  age = Array(20..200)

  if name == "Teddy"
    puts "Teddy is #{age.sample} years old!"
  else
    puts "#{name} is #{age.sample} years old!"
  end
end

age_generator