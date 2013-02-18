#!/usr/bin/ruby

def remove_array_dups(input_array)

  output_array = Array.new
  
  unless input_array.nil?
    
    len = input_array.length
    output_array[0] = input_array[0]
    i = 1
    
    while i<len
      if input_array[i] != output_array.last
        output_array.push input_array[i]
      end
      i+=1
    end
  end
  
  output_array
end