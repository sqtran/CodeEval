=begin
Steve Tran
Lowest Unique Number solution
Feb 18, 2015
=end
File.open(ARGV[0]).each_line do |line|
  tmp = line.split(" ").sort
  while tmp[0] == tmp[1] && !tmp.empty?
    tmp.delete(tmp[0])
  end
  if tmp.min
    puts line.split(" ").index(tmp.min) + 1
  else
    puts "0"
  end
end
