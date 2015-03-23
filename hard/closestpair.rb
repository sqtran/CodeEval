=begin
Steve Tran
Closest Pair Solution
Mar 22, 2015
=end
t1 = Time.now

lines = File.readlines(ARGV[0])
while (size = lines.shift.to_i) && size != 0 do
  shortest = 10000

  lines.shift(size).combination(2).each { |e| 
     i = e.join(" ").split " "
     d = Math.sqrt(((i[2].to_f-i[0].to_f) ** 2) + ((i[3].to_f-i[1].to_f) ** 2))
     shortest = d unless d > shortest
   }

   puts shortest < 10000? shortest.round(4) : "INFINITY"
end
t2 = Time.now

puts "#{t2-t1} miliseconds"
