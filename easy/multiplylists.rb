=begin
Steve Tran
Multiply Lists Solution
Feb 18, 2015
=end
File.open(ARGV[0]).each_line do |line|
  tmp = line.split("|")
  a = tmp[0].split(" ").map(&:to_i)
  b = tmp[1].split(" ").map(&:to_i)
  a.each_with_index { |i, index| b[index] *= i }
  puts b.join(" ")
end
