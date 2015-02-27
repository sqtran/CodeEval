=begin
Steve Tran
Data Recovery Solution
Feb 27, 2015
=end

#figures out what index is missing from the list
def find_hole(brr)
  brr.sort.each_with_index { |x, ix|  
    if ix+1 != x
      return x - 1
    end
  }
  return brr.size + 1
end

File.open(ARGV[0]).each_line do |line|
  input = line.split ";"
  a1 = input[0].split " "
  b1 = input[1].split(" ").map(&:to_i)
  
  b1.push find_hole(b1)

  c1 = a1.zip(b1).sort { |l, r| l[1].to_i <=> r[1].to_i }
  d1 = []
  c1.each { |x| d1.push(x[0]) }
   
  puts d1.join(" ")
end
