module ApplicationHelper
  
  # Return the app logo
  def d2newyorklogo
    image_tag("d2newyorklogo.png", :class => "round")
  end
  
  # Return a title on a per-page basis
  def title
    base_title = "D2NEWYORK"
    
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
    
  end
  
  # Dan's testing
  def myresult
    
    problem_3
    
  end
  
  def problem_3
    
    i = 3
#    num = 30
#    num = 13195
#    num = 51475143
    num = 600851475143
    is_prime = true
    primes = [2]
    
    while i < num/2
      
#      puts "STARTING " << i.to_s()
      
      unless num%2 == 0
      
        if (num%i == 0)
        
          primes.each do |prime|
            if ( is_prime == true && i%prime == 0) # i isn't prime
              is_prime = false
            
              puts "it's divisible by " + i.to_s() + " but that's not prime"
            
              break 
            end
          end
        
          primes.push i unless is_prime == false
        
#          puts "primes are: " << primes.to_s()
        end
      
      end
            
      i+=1
      is_prime = true
      
    end
    
    primes.last
    
  end
  
  def problem_1
    
    i = 3
    total = 0

    while i < 1000

      if (i%3 == 0 || i%5 == 0)
        total += i
      end
      i+=1
    end
    
    total
        
  end
  
end
