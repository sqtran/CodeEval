=begin
Steve Tran
Donkey distance calculation
Oct 17, 2017
=end

def distance(x1, x2, y1, y2)
  return Math.sqrt(((x2.to_f-x1.to_f) ** 2) + ((y2.to_f-y1.to_f) ** 2))
end

File.open(ARGV[0]).each_line do |line|
  /\((?<a>[\d,\-\ ]+)\) \((?<b>[\d,\-\ ]+)\)/ =~ line

  a = a.split ","
  b = b.split ","

  puts distance(a[0],b[0],a[1],b[1]).to_i
end
