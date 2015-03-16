=begin
Steve Tran
Panagram solution
Mar 16, 2015
=end
File.open(ARGV[0]).each_line do |line|
  lost = ("a".."z").to_a
  line.strip.downcase.each_char { |c| 
    lost.delete(c) 
    if !lost 
      break 
    end
  } 
  puts lost.size == 0 ? "NULL" : lost.join("")
end
