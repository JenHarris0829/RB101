# print all even numbers from 1 to 00, inclusive, with each number on a separate line

for num in (1..99) do
  if num.even?
    puts num
  end
end


num = 1
while num <= 99
  puts num if num.even?
  num += 1
end