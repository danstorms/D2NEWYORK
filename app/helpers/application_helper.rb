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
  
  def problem_4
    
    a = 999
    b = 999
    prod = ""
    first = ""
    second = ""
    pals = Array.new
    
    while b>500
    
      while a>500
      
        puts "a is " << a.to_s()
        puts "b is " << b.to_s()
      
        prod = (a*b).to_s()
      
        if ( prod[0]+prod[1]+prod[2] == prod[5]+prod[4]+prod[3] )
          pals.push prod
        end
        
        a-=1
        
        puts "prod is " << prod
      end
      
      a = 999
      b-=1

    end

    pals.max.to_s()
  end
  
  def problem_3  # well this never finishes, but it prints out the right prime pretty quick
    
    i = 3
#    num = 30
#    num = 13195
#    num = 51475143
    num = 600851475143
    is_prime = true
    primes = [2]
    
    while i < num/2
            
      unless num%2 == 0
      
        if (num%i == 0)
          
          puts "DIVISIBLE BY " << i.to_s()
        
          primes.each do |prime|
            if ( is_prime == true && i%prime == 0) # i isn't prime
              is_prime = false
            
              puts "it's divisible by " + i.to_s() + " but that's not prime"
              
              break 
            end
          end
          
          if is_prime
            primes.push i
            puts "Added prime: " << i.to_s()
          end
        
        end
      
      end
            
      i+=1
      is_prime = true
      
    end
    
    primes.last
    
  end
  
  
  def problem_2
    
    a = 1
    b = 2
    tmp = 0
    sum = 0
    
    while a < 4000000 && b < 4000000
      
      sum += b unless b%2 != 0
      
      c = a + b
      a = b
      b = c
      
      puts "a is " << a.to_s()
      puts "b is " << b.to_s()
      puts " "
      
    end
    
    sum
    
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
