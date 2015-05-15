=begin
Steve Tran
Swap Donkeys Solution
May 15, 2015
=end

File.open(ARGV[0]).each_line do |line|
  puts line.strip.split(" ").each { |e| e[0],e[-1] = e[-1],e[0] }.join(" ")
end