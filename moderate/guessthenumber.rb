=begin
Steve Tran
Guess the Number solution
Apr 24, 2015
=end

File.open(ARGV[0]).each_line do |line|
  input = line.strip.split(" ")

  upper = input.shift.to_i
  lower = 0

  input.each { |e|
    num = lower + ((upper - lower)/2.0).ceil
    if e == 'Yay!'
      puts num
      break
    elsif e == "Lower"
      upper = num-1
    else # e == "Higher"
      lower = num+1
    end 
  }
end
