=begin
Steve Tran
Reverse and Add solution
Mar 4, 2015
=end
def is_a_pal(num) 
  return num.to_s == num.to_s.reverse
end

File.open(ARGV[0]).each_line do |line|
  num = line.to_i
  (0..99).each do |i| 
    if is_a_pal(num)
      puts "#{i} #{num}"
      break
    else
      num += num.to_s.reverse.to_i
    end
  end
end
