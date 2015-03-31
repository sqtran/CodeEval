=begin
Steve Tran
Jolly Donkey Jumper solution
Mar 31, 2015
=end
File.open(ARGV[0]).each_line.collect { |e| e.split(" ").map(&:to_i)}.each do |line|
  abs = []
  (1..line.size-2).each { |i|
    abs.push (line[i]-line[i+1]).abs
  }
  
  arr = (1..line[0]-1).to_a
  abs.uniq.each {|e|
    arr.delete(e)
  }
  
  puts arr.empty? ? "Jolly" : "Not Jolly"
end
