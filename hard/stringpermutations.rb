=begin
Steve Tran
String permutations solution
Feb 18, 2015
=end
File.open(ARGV[0]).each_line do |line| 
  puts line.strip.split("").permutation.map{ |e| e.join("")}.sort.join(",")
end
