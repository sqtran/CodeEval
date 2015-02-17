=begin
Steve Tran
Sum of Donkey Brains
Feb 16, 2015
=end

File.open(ARGV[0]).each_line do |line|
  s = 0
  line.split("").each {|d| s += d.to_i}
  puts s
end
