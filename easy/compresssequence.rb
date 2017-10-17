=begin
Steve Tran
Compressed Strings solution
=end

File.open(ARGV[0]).each_line do |line|
  count = 0
  s = ""
  
  arr = line.split " "

  (0..arr.length-1).each { |i|
    count += 1
    if arr[i] != arr[i+1] then
      s <<  "#{count} #{arr[i]} "
      count = 0
    end
  }
  
  puts s[0...-1]
end
