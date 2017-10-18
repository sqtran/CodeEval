=begin
Steve Tran
Panacea - Truth or Lie solution
Oct 18, 2017
=end
File.open(ARGV[0]).each_line do |line|
  puts (line.split("|")[0].split(" ").inject(0) { |sum, n| sum + n.to_i(16) } <= line.split("|")[1].split(" ").inject(0) { |sum, n| sum + n.to_i(2) }).to_s.capitalize
end
