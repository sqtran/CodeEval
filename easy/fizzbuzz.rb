=begin
Steve Tran
Sample solution in Ruby for FizzBuzz problem at CodeEval.com
Feb 15, 2015
=end

File.open(ARGV[0]).each_line do |line|
  
  input = line.split(" ").map {|s| s.to_i}  
  d1 = input[0]
  d2 = input[1]
  max = input[2] 
  
  i=1
  while i <= max do
    if (i % d1 == 0 && i % d2 == 0)
      print "FB "    
    elsif (i % d1) == 0
      print "F "
    elsif (i % d2) == 0
      print "B "
    else
      print "#{i} "
    end
    i = i +1
  end
  puts
end 
# file closed automatically when in a block
