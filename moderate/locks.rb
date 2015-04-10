=begin
Steve Tran
Locks solution
Apr 10, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.strip.split(" ").map!(&:to_i)

  doors = Array.new(input[0]) {false}
  (1..input[1]-1).each {
    doors = doors.map.with_index { |d, idx| (idx+1) % 2 == 0 ? true : d }
    doors = doors.map.with_index { |d, idx| (idx+1) % 3 == 0 ? !d : d }
  }
  # last iteration, he just changes the last door
  doors[-1] = !doors[-1]
  puts doors.count{ |d| !d }
end
