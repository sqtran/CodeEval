=begin
Steve Tran
Another donkey-brained solution for CodeEval
Feb 15, 2015
=end

File.open(ARGV[0]).each_line do |line|
  puts line.downcase
end
