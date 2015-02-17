=begin
Steve Tran
Reverse Words
Feb 16, 2015
=end

File.open(ARGV[0]).each_line do |line|
  puts line.split(' ').reverse.join(' ')
end
