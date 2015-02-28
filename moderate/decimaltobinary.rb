=begin
Steve Tran
Decimal to binary solution
Feb 27, 2015
=end
File.open(ARGV[0]).each_line do |line|
  puts line.to_i.to_s(2)
end
