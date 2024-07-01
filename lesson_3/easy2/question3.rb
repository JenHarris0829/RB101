ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# the solution
puts ages.merge!(additional_ages)

# what I created
# ages[:"Marilyn"] = 22
# ages[:"Spot"] = 237
# puts ages
