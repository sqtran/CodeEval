=begin
Steve Tran
Closest Pair Solution, take 2 for optimization
Mar 22, 2015
=end
require 'debugger'

t1 = Time.now

def distance(p1, p2)
  Math.sqrt(((p2[0]-p1[0]) ** 2) + ((p2[1]-p1[1]) ** 2))
end

File.open(ARGV[0]) do |f|
  while ((size = f.readline.to_i) != 0)
    arr = []
    (1..size).each do |i|
      arr.push f.readline.strip.split(" ").map(&:to_f)
    end
    shortest = 10000    
    (0..size-2).each do |i| 
      p1 = arr[i]
      (i+1..size-1).each do |j| 
        p2 = arr[j]
        d = distance(p1, p2)
        shortest = d unless d > shortest
      end
    end
    puts shortest < 10000? shortest.round(4) : "INFINITY"
   end
end

t2 = Time.now

puts "#{t2-t1} miliseconds"
