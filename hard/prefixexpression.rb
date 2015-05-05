=begin
Steve Tran
Prefix Expressions Solution
Mar 29, 2015
=end

def is_num(n)
  return n.to_s.match(/[0-9]+/)
end

File.open(ARGV[0]).each_line do |line|
  stack = []
  
  line.strip.split(" ").reverse.each { |e|
    if !is_num(e)
      stack.push stack.pop.send(e, stack.pop) 
    else
      stack.push e.to_f
    end
  }

  puts stack[0].round
end
