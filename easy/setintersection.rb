=begin
Steve Tran
Set Intersection Solution
Feb 17, 2015
=end

File.open(ARGV[0]).each_line do |line|
  a = line.split ";"
  a1 = a[0].split ","
  a2 = a[1].split ","
  print (a1 & a2).join(",") unless (a1&a2).empty?
  puts
end
