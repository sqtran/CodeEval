=begin
Steve Tran
Stepwise word Solution
It's been a while, so I'm slowly getting back into Ruby
Aug 14, 2015
=end
File.open(ARGV[0]).each_line do |line|
  line.strip.split(" ").max { |a, b|  a.length <=> b.length }.split("").each_with_index { |c, i| print "*"*i + c + " "  }
  puts
end
