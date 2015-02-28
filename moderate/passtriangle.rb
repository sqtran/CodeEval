=begin
Steve Tran
Pass Triangle Solution 
Feb 27, 2015
=end
idx = 0
sum = 0
File.open(ARGV[0]).each_line do |line|
  input = line.split(" ").map(&:to_i)
  
  left = input[idx-1] unless idx-1 < 0
  center = input[idx]
  right = input[idx+1] unless idx+1 > input.size

  #puts "Left #{left}, Center #{center}, Right #{right} "

  if !left && !right
    sum += center
    idx = 0
    #puts "initial start in center"
  else 
    #puts "moving!"
    d = []
    d.push left unless !left
    d.push center
    d.push right unless !right
  
    #puts input.index(d.max)
    sum += d.max
    idx = input.index(d.max)
  end
end

puts sum
