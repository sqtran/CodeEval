=begin
Steve Tran
Number Pairs solution
Mar 17, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.split(";")

  c = input[0].split(",").map(&:to_i).combination(2).select { |e| e[0] + e[1] == input[1].to_i }
  c.collect!{ |e| e.join (",")}
  puts c.size > 0 ? c.join(";") : "NULL"
end
