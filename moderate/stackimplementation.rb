=begin
Steve Tran
Donkey Stack Implementation Solution
Mar 29, 2015
=end

File.open(ARGV[0]).each_line do |line|
  stack = []
  line.strip.split(" ").each { |e|
    stack.push e
  }
  
  ret = []
  while stack.size > 0
    ret.push stack.pop
    stack.pop
  end
  puts ret.join " "
end
