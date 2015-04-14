=begin
Steve Tran
Matrix Rotation solution
Apr 13, 2015
=end

File.open(ARGV[0]).each_line do |line| 
  input = line.strip.split(" ")
  s = Math.sqrt(input.size)
  arr = Array.new(s) { Array.new(s) }
  (0..s-1).each { |r|
    (0..s-1).each { |c|
      arr[r][c] = input.shift
    }
  }

  puts arr.transpose.collect {|e| e.reverse }.flatten.join " "
end
