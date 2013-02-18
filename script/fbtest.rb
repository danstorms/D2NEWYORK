#!/usr/bin/ruby

# 2 3
# 1 1
# 2 2

line1 = gets.chomp
line2 = gets.chomp
line3 = gets.chomp

pegs = Array.new
discs = line2.split(' ')
output_peg = Integer(line3.split(' ')[0])-1

puts "output peg: " << output_peg.to_s()

i = 0

puts "There are " + discs.count.to_s() + " discs"

discs.each do |disc|
  if pegs[Integer(disc)-1].nil?
    pegs[Integer(disc)-1] = Array.new
  end
  pegs[Integer(disc)-1].push i
  i+=1
end

peg_count = i



i = 0

pegs.each do |peg|
  if peg.nil?
    puts "PEG " + i.to_s() + " has no discs"
  else
    peg.each do |disc|
      puts "PEG " + i.to_s() + " has DISC: " << disc.to_s()
    end
  end
  i+=1
end



i = 0

puts "peg count is: " << peg_count.to_s()

finished = false

peg_w_largest = -1
peg_w_nil = 0


while finished == false
  
  pegs.each do |peg|
    
    # find the largest value that's on the top
    
    
    # if it's one less than the one that's on our output peg, 
    #   pop it from the input peg and add it to the output peg
    # otherwise, add it to the nil disc
    
    
    
    if peg.nil?
      puts "PEG " + i.to_s() + " has no discs"
      peg_w_nil = i
    else
      puts "PEG " + i.to_s() + " has smallest peg: " + peg.first.to_s()
      
      unless i == output_peg
      
        if peg_w_largest == -1
          peg_w_largest = i
          puts "PEG WITH LARGEST set to " << peg_w_largest.to_s()
        end
      
        if pegs[peg_w_largest].first < peg.first
          peg_w_largest = i
          puts "PEG WITH LARGEST set to " << peg_w_largest.to_s()
        end
      end
      
    end
  end
    
  if pegs[peg_w_largest] == pegs[output_peg] - 1
    pegs[output_peg].push pegs[peg_w_largest].pop
  else 
    pegs[peg_w_nil].push pegs[peg_w_largest].pop
  end

  if pegs[output_peg].length == discs.count
    finished = true
  end

  peg_w_largest = -1
  peg_w_nil = 0

  i+=1
  
end







#puts line1.split(' ')[0]
#puts line1.split(' ')[1]
#puts line2
#puts line3




#pegs = line1.split(' ')[1]

