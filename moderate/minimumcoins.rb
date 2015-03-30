=begin
Steve Tran
Minimum Donkey Coins solution
Mar 29, 2015
=end

File.open(ARGV[0]).each_line.map(&:to_i).each do |line|
  funf = line / 5
  drei = (line % 5) / 3
  ein = (line - funf*5 - drei*3)
  puts funf + drei + ein
end
