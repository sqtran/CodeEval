=begin
Steve Tran
Closest Pair Solution
Mar 20, 2015
=end
def distance(x1, y1, x2, y2) 
  Math.sqrt(((x2.to_f-x1.to_f) ** 2) + ((y2.to_f-y1.to_f) ** 2))
end

lines = File.readlines(ARGV[0]).collect { |a| a.strip}

while lines.size > 0 do
  size = lines[0].to_i+2
  chunk = lines.take(size)[1..-2]
  lines = lines.drop(size)

  shortest = 10000
  chunk.combination(2).collect {|e| e.join " "}.each { |e| 
     i = e.split " "
     d = distance(i[0], i[1], i[2], i[3])
     shortest = d unless d > shortest
   }

  puts shortest < 10000? shortest.round(4) : "INFINITY"
end
