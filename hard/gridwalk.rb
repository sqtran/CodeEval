=begin
Steve Tran
Grid Walk Solution
May 1, 2015
=end

require 'debugger'

t1 = Time.now
@visited = []

def isvalid(x,y)

  test = x.to_s << "," << y.to_s
  if @visited.include? test
  #  puts "#{x}, #{y} been here before"
    return false 
  end
 

  xsum = 0
  ysum = 0
  x.abs.to_s.split("").map(&:to_i).each { |e| xsum += e }
  y.abs.to_s.split("").map(&:to_i).each { |e| ysum += e }

  #puts "#{x},#{y} is #{xsum+ysum <= 19}"
  return xsum+ysum <= 19
end


def moves(x,y)

  if !isvalid(x,y)
    return
  else
    @visited.push "#{x},#{y}"
    moves(x, y-1)
    moves(x-1, y)
    moves(x, y+1)
    moves(x+1, y)
  end
end

moves(0,0)

puts @visited.size


puts Time.now - t1
