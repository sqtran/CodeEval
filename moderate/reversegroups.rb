=begin
Steve Tran
Reverse Groups solution
Mar 16, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.strip.split ";"
  size = input[1].to_i
  puts input[0].split(",").each_slice(size).collect { |e| e.size < size ? e : e.reverse}.join ","
end
