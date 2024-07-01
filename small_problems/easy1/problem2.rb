def is_odd?(num)
  if num.remainder(2) == 0
    false
  else true
  end
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)