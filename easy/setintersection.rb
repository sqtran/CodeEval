=begin
Steve Tran
Set Intersection Solution
Took several tries to figure out that the \n at the end were throwing things off
Feb 18, 2015
=end
File.open(ARGV[0]).each_line do |line|
  a = line.strip.split ";"
  a1 = a[0].split ","
  a2 = a[1].split ","
  puts (a1 & a2).join(",")
end

