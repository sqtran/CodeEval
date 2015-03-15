=begin
Steve Tran
Longest Line solution
Mar 15, 2015
=end
file = File.readlines(ARGV[0]).collect { |a| a.strip}
num = file.delete_at(0).to_i
file.sort! {|a, b| b.size <=> a.size}
puts file.first(num)
