=begin
Steve Tran
Even Numbers
Feb 18, 2015
=end
File.open(ARGV[0]).each_line do |line|
  puts line.to_i % 2 == 0 ? "1" : "0"
end
