=begin
Steve Tran
Word Search Solution
Based off of my Longest Path Solution
Apr 25, 2015
=end

def left?(x,y)
  return y-1 >= 0 && !@visited[x][y-1] && @map[x][y-1] == @target.first
end

def up?(x,y)
  return x-1 >= 0 && !@visited[x-1][y] && @map[x-1][y] == @target.first
end

def right?(x,y)
  return y+1 < 4 && !@visited[x][y+1] && @map[x][y+1] == @target.first
end

def godown?(x,y)
  return x+1 < 3 && !@visited[x+1][y] && @map[x+1][y] == @target.first
end


def recurse(x, y)
  if @map[x][y] != @target.first
    return
  end

  @letters.push @target.shift
  @visited[x][y] = true

  if up?(x,y)
    recurse(x-1, y)
  end

  if left?(x,y)
    recurse(x, y-1)
  end

  if godown?(x,y)
    recurse(x+1, y)
  end

  if right?(x,y)
    recurse(x, y+1)
  end

  if @target.size == 0
    return
  end

  @target.unshift @letters.pop
  @visited[x][y] = false
end

@map = [
['A','B','C','E'], 
['S','F','C','S'], 
['A','D','E','E']]

File.open(ARGV[0]).each_line do |line|

  @target = line.strip.split ""

  @visited = Array.new (3) { [false] * 4 }
  @letters = []

  #@map.each { |e| puts e.join "" }
  #@visited.each { |e| puts e.map { |a| (a ? "T" : "F") }.join "" }

  (0..2).each {|x|
    (0..3).each { |y|
      recurse(x,y)
    }
  }  

  puts (@target.size == 0).to_s.capitalize
end
