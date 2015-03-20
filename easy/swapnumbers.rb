=begin
Steve Tran
Swap Numbers solution
Mar 20, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.split ":" 
  nums = input[0].split " "  
  swps = input[1].split ","

  swps.each { |e|
    pos = e.split("-").map(&:to_i)
    nums[pos[0]], nums[pos[1]] = nums[pos[1]], nums[pos[0]]
  }
  puts nums.join " "
end
