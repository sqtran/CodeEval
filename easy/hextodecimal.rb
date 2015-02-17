=begin
Steve Tran
Hex to Decimal
Feb 16, 2015
=end
File.open(ARGV[0]).each_line do |line|
  puts line.to_i(16)
end
