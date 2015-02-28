=begin
Steve Tran
mth to last element
Super unreadable, but it's part of the one-liner puzzle
Feb 27, 2015
=end
File.open(ARGV[0]).each_line do |line|
  nn = line.split(" ") 
  puts nn[(nn[nn.size-1].to_i+1)*-1] unless nn[-1].to_i > nn.size
end
