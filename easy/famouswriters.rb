=begin
Steve Tran
Famous Writers Solution
Feb 18, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.split("|")
  t = input[0]
  c = input[1].split(" ").map(&:to_i).each { |e| print t[e-1] }
  puts
end
