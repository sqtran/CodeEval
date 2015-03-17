=begin
Steve Tran
Ugly numbers solution
Mar 13, 2015
=end
require 'debugger'

def is_ugly(i) 
  return i % 2 == 0 || i % 3 == 0 || i % 5 == 0 || i % 7 == 0 
end

def ordered(order, i)
  
end


File.open(ARGV[0]).each_line do |line| 
  
  max_ops = line.strip.size - 1

  puts "#{line} + #{max_ops}"
  for p in (0..max_ops) do
    
    for m in 

    line.strip.split("").permutation.each { |v| 
      print v
    }
    puts
  end

end
