=begin
Steve Tran
Penultimate Donkey Word
Feb 27, 2015
=end

File.open(ARGV[0]).each_line do |line|
  puts line.split(" ")[-2]
end
