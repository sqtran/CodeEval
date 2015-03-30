=begin
Steve Tran
Pascal Triangle solution
Mar 30, 2015
=end
File.open(ARGV[0]).each_line.map(&:to_i).each do |line|
  a = Array.new(line) {Array.new}
  a[0][0] = 1
  (1..line-1).each { |r|
    (0..r).each { |c|
      left = a[r-1][c-1]
      left = 0 unless c-1 >= 0
      right = a[r-1][c]
      right = 0 unless right != nil
      a[r][c] = left + right
    }
  }
   
  puts a.flatten.join " "
end
