def stringy(int)
  string = ' '
  i = 0

  while i <= int do
    i.odd? ? string << '0' : string << '1'
    i += 1
  end
  string
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

# didn't make this on my own. need to think it thru more
