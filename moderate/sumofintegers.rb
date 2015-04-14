=begin
Steve Tran
Sum of Integers solution
Apr 13, 2015
=end
File.open(ARGV[0]).each_line do |line|
  arr = line.split(",").map(&:to_i)
  largest = arr[0]
  (0..arr.size-1).each { |i|
    sum = arr[i]
    largest = sum unless largest > sum
    (i+1..arr.size-1).each { |j|
      sum += arr[j]
      largest = sum unless largest > sum 
    }
  }
  puts largest
end
