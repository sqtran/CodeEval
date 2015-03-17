=begin
Steve Tran
Pass Triangle Solution 
Assumes adjacent cells are either left, center, and right.
Looks like the input file
Feb 27, 2015
=end
idx = 0
sum = 0
File.open(ARGV[0]).each_line do |line|
  input = line.split(" ").map(&:to_i)
  
  left = input[idx-1] unless idx-1 < 0
  center = input[idx]
  right = input[idx+1] unless idx+1 > input.size
  
  puts " input = #{line.strip}, options = Left #{left}, Center #{center}, Right #{right} "

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
   # puts "Biggest = #{d.max}  #{input.index(d.max)}"
    if left == d.max
      puts "going left #{left}"
    elsif center == d.max
      puts "going center #{center}"
    elsif right == d.max
      puts "going right #{right}"
    else
      puts "something bad happened"
    end
  end
end

puts sum
