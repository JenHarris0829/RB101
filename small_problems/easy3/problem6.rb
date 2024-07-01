def xor(a, b)
  if (a == true && b == false) || (a == false && b == true)
    true
  else
    false
  end
end

p xor(5.even?, 4.even?)
p xor(5.odd?, 4.odd?)
p xor(5.odd?, 4.even?)
p xor(5.even?, 4.odd?)

# didn't solve on my own, need to think about this more