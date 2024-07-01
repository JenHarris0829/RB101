# print all ODD numbers from 1 to 99, inclusize, with each number on a separate line
# range (1..99)
# if odd? print

for num in 1..99 do
  if num.odd?
    puts num
  end
end

# Further Exploration ------------------------------------------------

arr = Array(1..99)
puts arr.select!{|num| num % 2 != 0}

1.upto(99) {|num| puts num if num.odd?}

(1..99).step(2) {|num| puts num}