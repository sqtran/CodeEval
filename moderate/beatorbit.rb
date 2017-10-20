=begin
Steve Tran
Beat or Bit solution
Oct 20, 2017
=end
File.open(ARGV[0]).each_line do |line|
  puts line.split("|").map { |v| v.to_i(2) }.map { |v| 
     mask = v >> 1
     while mask != 0 do
       v = v ^ mask
       mask = mask >> 1
     end
     v
  }.join(" | ") 
end
