=begin
Steve Tran
Email validation solution
Mar 19, 2015
=end

File.open(ARGV[0]).each_line do |line|
  #puts line.strip.match(/^[\w\d+.]+@([\w\d]+.)+[a-z]{3,3}$/) ? "true" : "false"
  puts line.strip.match(/^[a-zA-Z0-9._+-]+@[a-z0-9.]+.[a-z]{3}$/) ? "true" : "false"  
end