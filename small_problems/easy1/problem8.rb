# method that takes a positive integer as argument and returns the number
# with digits reversed

def reversed_number(num)
  puts num.to_s.reverse.to_i
end


reversed_number(12345)
reversed_number(12213)
reversed_number(456)
reversed_number(12000)
reversed_number(12003)
reversed_number(1)