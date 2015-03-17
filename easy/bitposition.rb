=begin
Steve Tran
Donkey Bits solution
Mar 17, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.split(",").map(&:to_i)
  input[0] = input[0].to_s(2).reverse
  puts input[0][input[1]-1] == input[0][input[2]-1]
end
