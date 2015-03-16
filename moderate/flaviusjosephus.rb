=begin
Steve Tran
Flavius Josephus solution
Mar 16, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.strip.split(",").map(&:to_i)
  a = (0..input[0]-1).to_a

  count = 0
  while a.size > 0 do
    if count == input[1]-1 
      print a.delete_at(0)
      print ' ' unless a.size == 0
      count = 0
    else
      a += a.slice!(0,1)
      count += 1
    end
  end
  puts
end
