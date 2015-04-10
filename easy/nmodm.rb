=begin
Steve Tran
N mod M solution
Apr 10, 2015
=end
File.open(ARGV[0]).each_line.collect {|e| e.split(",").map(&:to_i)}.each do |line|
  puts line[0] - line[1]*(line[0]/line[1])
end
