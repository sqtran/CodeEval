=begin
Steve Tran
ASCII Decryption solution
Mar 16, 2015
=end
require 'debugger'
File.open(ARGV[0]).each_line do |line| 
  input = line.split("|").collect {|e| e.strip}
  data = input[2].split(" ")
  ss = input[0].to_i-1
  ch = input[1].ord

  candidates = []  
  for i in (0..data.size-ss) do 
    test = data[i..i+ss]
    count = 1
    for j in (i+ss+1..data.size-ss) do
      if test == data[j..j+ss]
        count += 1
      end 
      if count > 2
        break
      end
    end
    if count == 2
      #might have found a  bunch in between 2 whole words
      candidates.push test
    end
  end
  

  offset = nil
  # start hacking away trying to find something that makes sense
  candidates.each { |e| 
    diff = e[-1].to_i - ch 
    puts "e = #{e} #{e[-1]} diff = #{diff} looking at #{data[0].to_i + diff}"
    
    if /[[:upper]]/.match((data[0].to_i + diff).chr)
      puts "found an upper #{e} diff = #{diff}"
      offset = diff
      break
    end
  }
  
  if offset
    data.each{ |e| 
      print (e.to_i+offset).chr
    }
  end
  

end
