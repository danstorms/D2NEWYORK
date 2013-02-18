#!/usr/bin/ruby

i = 19*20
#i = 9*10
increment = 20
#increment = 10
notfound = true

nums = [*2..increment]

while notfound
  
  i += increment
  
  nums.each do |num|
    if i%num == 0
      notfound = false
      
      puts i.to_s() << " is divisble by " << num.to_s()
      
    else
      notfound = true
      break
    end
  end

end

puts "RESULT IS : " << i.to_s()
