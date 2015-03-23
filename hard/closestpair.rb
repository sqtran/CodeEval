=begin
Steve Tran
Closest Pair Solution
Mar 22, 2015
=end
lines = File.readlines(ARGV[0])
size = lines[0].to_i
while size != 0 do
:x
  lines[1..size].combination(2).each { |e| 
     i = e.join(" ").split " "
     d = Math.sqrt(((i[2].to_f-i[0].to_f) ** 2) + ((i[3].to_f-i[1].to_f) ** 2))
     shortest = d unless d > shortest
   }

  puts shortest < 10000? shortest.round(4) : "INFINITY"
  lines = lines.drop(size+1) #+1 to remove N
  size = lines[0].to_i
end
