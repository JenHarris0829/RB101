a = %w(a b c d e)
puts a.fetch(7) # => raises an IndexError, index 7 is out of bounds
puts a.fetch(7, 'beats me') # => 7 is out of bounds but will return default
# of 'beats me'
puts a.fetch(7) { |index| index**2 } # => 7 is out of bounds, so the index 7 is
# passed to the block and the return value is 49
