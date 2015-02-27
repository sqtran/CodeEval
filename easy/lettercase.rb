=begin
Steve Tran
Donkeybrained lettercase Solution
Feb 27, 2015
=end
File.open(ARGV[0]).each_line do |line|
  lower = 0.0
  upper = 0.0

  line.strip.split("").each { |x| 
    if x.match(/[a-z]/)
      lower += 1
    else
      upper += 1
    end
  }
  puts "lowercase: %.2f uppercase: %.2f" % [100*lower/(lower+upper), 100*upper/(lower+upper)]
end
