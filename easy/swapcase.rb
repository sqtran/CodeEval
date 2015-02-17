=begin
Steve Tran
Swap case solution
Feb 16, 2015
=end
File.open(ARGV[0]).each_line do |line|
  puts line.swapcase
end
