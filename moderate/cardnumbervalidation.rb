=begin
Steve Tran
Card number validation solution
Mar 11, 2015
=end
File.open(ARGV[0]).each_line do |line|
  sum = 0
  input = line.strip.gsub(" ", "").split("").reverse.map(&:to_i)
  input.each_with_index { |d, idx| 
    if idx % 2 == 0
      num = d
    else 
      num = d + d
      num = num.to_s[0].to_i + num.to_s[1].to_i unless num < 10
    end
    sum += num
  }

  puts sum % 10 == 0 ? 1 : 0
end
