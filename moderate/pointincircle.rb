=begin
Steve Tran
Point in Circle solution
Named Groups make everything easier
Mar 15, 2015
=end
File.open(ARGV[0]).each_line do |line|
  /Center: \((?<center>[0-9., -]+)\); Radius: (?<radius>[0-9.]+); Point: \((?<point>[0-9., -]+)\)/ =~ line
  /(?<x2>[0-9.-]+), (?<y2>[0-9.-]+)/ =~ center
  /(?<x1>[0-9.-]+), (?<y1>[0-9.-]+)/ =~ point
  distance = Math.sqrt(((x2.to_f-x1.to_f) ** 2) + ((y2.to_f-y1.to_f) ** 2))
  puts distance <= radius.to_f ? "true" : "false"
end
