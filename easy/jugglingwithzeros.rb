=begin
Steve Tran
Juggling with Zeros solution, in Ruby
Feb 16, 2015
=end

def decode(input, input2) 
  case input
    when "0"
      return input2
    when "00"
      return input2.gsub(/0/i, "1")
  end
end

File.open(ARGV[0]).each_line do |line|
  input = line.split " "
  i, s = 0, ""
  while i < input.length-1
    s += decode(input[i], input[i+1])
    i += 2
  end
  puts s.to_i(2)
end
