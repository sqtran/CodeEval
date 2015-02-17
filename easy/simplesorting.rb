=begin
Steve Tran
Simple donkey sort
Feb 16, 2015
=end
File.open(ARGV[0]).each_line do |line|
  line.split(" ").map{|i| i.to_f}.sort.each { |f| printf("%.3f ", f)}
  puts
end
