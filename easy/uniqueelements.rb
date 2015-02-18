=begin
Steve Tran
Unique Elements solution
Feb 18, 2015
=end
File.open(ARGV[0]).each_line do |line|
  puts line.strip.split(",").uniq.join(",")
end
