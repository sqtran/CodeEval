=begin
Steve Tran
Happy Numbers solution
Feb 17, 2015
=end

def happy(arg1)
  if arg1 == 1 || arg1 == 0
    return arg1
  elsif arg1 == 4
    return 0
  else
    sum = 0;
    arg1.to_s.each_char {|d| sum += d.to_i*d.to_i }
    return happy(sum)
  end
end

File.read(ARGV[0]).each_line do |line|
  puts happy(line.to_i)
end
