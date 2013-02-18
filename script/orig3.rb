#!/usr/bin/ruby


#int w = 10, x = 0, z = 0;
#int y = x++;

#for ( ; w >= 0; w-- )
#{
#z = x + y;
#printf( "%i, ", y = x );
#x = z;
#}


w = 10

def fibonacci_nums(w)
  w-=1
  x = 0
  z = 0
  y = 1
  while w >= 0
    z = x + y
    y = x
    puts y
    x = z  
    w-=1
  end
end





#with_letters = "a3bb4_"


#def remove_array_dups(input_array) 
#  with_letters.delete('^a-zA-Z') unless with_letters.nil?   
#end