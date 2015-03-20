=begin
Steve Tran
Locks solution
Mar 19, 2015
=end

File.open(ARGV[0]).each_line do |line|
  input = line.split(" ").map(&:to_i)  
  doors = [false] * input[0]
  p doors
  (1..input[1]-1).each {
    doors = doors.each_with_index.map { |d, idx| (idx > 0 && idx+1 % 2 == 0) ? !d : d }
    p doors
    doors = doors.each_with_index.map { |d, idx| (idx > 0 && idx+1 % 3 == 0) ? !d : d }
    p doors
  }
  doors[-1] = !doors[-1]
  p doors
  
  puts doors.count{ |d| !d }
end


#I#0 1 2 3 4 5 6 7 8 9
#D#1 2 3 4 5 6 7 8 9 10