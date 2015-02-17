=begin
Steve Tran
Fibonacci solution in Ruby
Feb 17, 2015
=end

def F(n)
  if n == 0 || n == 1
    return n
  else
    return F(n-1) + F(n-2)
  end
end

File.open(ARGV[0]).each_line do |line|
  puts F(line.to_i)
end
