=begin
Steve Tran
Number of Ones solution
Mar 11, 2015
=end
File.open(ARGV[0]).each_line do |line|
  counter = 0
  line.to_i.to_s(2).split("").each { |d| counter += 1 unless d == '0' }
  puts counter
end
