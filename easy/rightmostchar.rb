=begin
Steve Tran
Right Most Donkey Character
Mar 23, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.split ","
  ridx = input[0].rindex(input[1][0]) 
  puts ridx ? ridx : -1
end
