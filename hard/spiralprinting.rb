=begin
Steve Tran
Spiral Printing solution
Apr 14, 2015
=end

File.open(ARGV[0]).each_line do |line| 
  /(?<row>([0-9]+));(?<col>([0-9]+));(?<input>(.+))/ =~ line
  row, col, input = row.to_i, col.to_i, input.strip.split(" ")

  arr = Array.new(row) { Array.new(col) }
  (0..row-1).each { |r|
    (0..col-1).each { |c|
      arr[r][c] = input.shift
    }
  }
  val = []
  while arr.size > 0
    val.push arr.shift
    arr = arr.transpose.reverse
  end
  puts val.join " "
end
