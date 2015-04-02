=begin
Steve Tran
Email validation solution
Apr 1, 2015
=end
File.open(ARGV[0]).each_line do |line|
  puts line.strip.match(/^([a-zA-Z0-9._+-]+|".*")@[a-z0-9.]+.[a-z]{3}$/) ? "true" : "false"  
end
