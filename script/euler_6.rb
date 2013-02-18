#!/usr/bin/ruby

last_num = 10
#last_num = 100

i = 0
sum_of_squares = 0
square_of_sum = 0

while i <= last_num
  
  sum_of_squares += i*i
  
  square_of_sum += i
  
end


# SQUARE OF SUM

square_of_sum = square_of_sum * square_of_sum



# DIFFERENCE

puts "Square of sums is " << square_of_sum.to_s()

puts "Sum of squares " << sum_of_squares.to_s()

puts "Difference is " << (square_of_sum - sum_of_squares).to_s()

