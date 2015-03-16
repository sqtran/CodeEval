=begin
Steve Tran
Find a Square solution
I'm actually not sure if this is the right way to determine if it's a square.
It feels like a shortcut way to doing a more complicated calculation.
Mar 16, 2015
=end
def distance(x1, x2, y1, y2)
  return Math.sqrt(((x2.to_f-x1.to_f) ** 2) + ((y2.to_f-y1.to_f) ** 2))
end

File.open(ARGV[0]).each_line do |line|
  /\((?<a>[\d,]+)\), \((?<b>[\d,]+)\), \((?<c>[\d,]+)\), \((?<d>[\d,]+)\)/ =~ line
  a = a.split ","
  b = b.split ","
  c = c.split ","
  d = d.split ","

  ab = distance(a[0],b[0],a[1],b[1])
  ac = distance(a[0],c[0],a[1],c[1])
  ad = distance(a[0],d[0],a[1],d[1])
  bc = distance(b[0],c[0],b[1],c[1])
  bd = distance(b[0],d[0],b[1],d[1])
  cd = distance(c[0],d[0],c[1],d[1])
  puts [ab, ac, ad, bc, bd, cd].uniq.size == 2 
end
