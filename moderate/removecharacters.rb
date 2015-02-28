=begin
Steve Tran
Remove Characters solution 
The thing to learn from this one is that if you pass in a String literal to the
gsub's first argument, it takes it literally.  It looks like you have to build 
a Regexp via constructor to pass it into gsub.
Feb 27, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.split(",").map { |x| x.strip }
  r = Regexp.new("[#{input[1]}]")
  puts input[0].gsub(r, '')
end
