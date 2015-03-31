=begin
Steve Tran
First non-repeated character solution
Mar 31, 2015
=end
File.open(ARGV[0]).each_line.collect {|e| e.strip.split ""}.each do |line|
  puts line.detect { |e| line.count(e) == 1 }
end
