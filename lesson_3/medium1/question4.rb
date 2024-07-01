def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end


# rolling_buffer1 uses a mutating method to mutate the argument from 'buffer',
# so it will have a mutated array. It uses pass by reference

# rolling_buffer2 does not mutate the 'input_array', so the array will not be
# mutated. It uses pass by value