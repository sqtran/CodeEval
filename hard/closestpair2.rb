=begin
Steve Tran
Closest Pair Solution, take 2 for optimization
Lots of optimization from previous versions.
Mar 22, 2015
=end
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
      (i+1..size-1).each do |j| 
        d = distance(arr[i], arr[j])
        shortest = d unless d > shortest
      end
    end

    printf shortest == 10000 ? "INFINITY" : "%.4f\n", shortest
  end
end
