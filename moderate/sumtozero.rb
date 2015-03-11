=begin
Steve Tran
Sum to Zero solution
Mar 11, 2015
=end
File.open(ARGV[0]).each_line do |line|
  combos = line.strip.split(",").combination(4).to_a
  zeros = 0
  combos.each { |c| 
    sum = 0
    c.each{ |n| 
      sum += n.to_i
    }
    zeros += 1 unless sum != 0
  }
  puts zeros
end
