=begin
Steve Tran
Longest word solution
Feb 27, 2015
=end
File.open(ARGV[0]).each_line do |line|
  puts line.strip.split(" ").max { |x,y| x.size <=> y.size }
end
