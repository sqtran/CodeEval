=begin
Steve Tran
Strings and Arrows solution
July 15, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.strip.split("")

  larr = ['<','-','-','<','<']
  rarr = ['>','>','-','-','>']

  counter = 0
  (0..input.size-5).each { |i|
    look = input[i..i+4]
    if look == larr || look == rarr
      counter += 1
    end
  }
  puts counter
end
