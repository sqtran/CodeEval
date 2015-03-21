=begin
Steve Tran
Closest Pair Solution
Mar 21, 2015
=end
def distance(x1, y1, x2, y2) 
  Math.sqrt(((x2.to_f-x1.to_f) ** 2) + ((y2.to_f-y1.to_f) ** 2))
end
t1 = Time.now
lines = File.readlines(ARGV[0]).collect { |a| a.strip}
while lines.size > 1 do
  size = lines[0].to_i+1
  chunk = lines.take(size)[1..-1]
  lines = lines.drop(size)

  shortest = 10000
  chunk.combination(2).to_a.collect{|e| e.join " "}.each { |e| 
     i = e.split " "
     d = distance(i[0], i[1], i[2], i[3])
     shortest = d unless d > shortest
   }

  puts shortest < 10000? shortest.round(4) : "INFINITY"
end
t2 = Time.now

puts (t2-t1) * 1000
