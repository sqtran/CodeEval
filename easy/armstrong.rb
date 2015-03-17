=begin
Steve Tran
Armstrong Numbers solution
Mar 17, 2015
=end
File.open(ARGV[0]).each_line do |line|
  sum = 0
  pow = line.strip.size
  line.each_char { |e| sum += e.to_i ** pow }
  puts (line.to_i == sum) ? "True" : "False"
end
