=begin
Steve Tran
Sum of integers from a file
Feb 17, 2015
=end
sum = 0
File.open(ARGV[0]).each_line do |line|
  sum += line.to_i
end
puts sum
