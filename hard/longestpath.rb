=begin
Steve Tran
Longest Path Solution
Apr 25, 2015
=end

@longest
@map
@visited
@letters

def left?(x,y)
  return y-1 >= 0 && !@letters.include?(@map[x][y-1]) && !@visited[x][y-1]
end

def up?(x,y)
  return x-1 >= 0 && !@letters.include?(@map[x-1][y]) && !@visited[x-1][y]
end

def right?(x,y)
  return y+1 < @map.size && !@letters.include?(@map[x][y+1]) && !@visited[x][y+1]
end

def down?(x,y)
  return x+1 < @map.size && !@letters.include?(@map[x+1][y]) && !@visited[x+1][y]
end


def recurse(x, y)
  @letters.push @map[x][y]
  @visited[x][y] = true

  if up?(x,y)
    recurse(x-1, y)
  end

  if left?(x,y)
    recurse(x, y-1)
  end

  if down?(x,y)
    recurse(x+1, y)
  end

  if right?(x,y)
    recurse(x, y+1)
  end

  if @letters.size > @longest.size
    @longest = @letters.clone
  end

  @letters.pop
  @visited[x][y] = false
end


File.open(ARGV[0]).each_line do |line|
  size = Math.sqrt(line.strip.size)
  @map = Array.new  
  @visited = Array.new (size) { [false] * size }
  @longest = []
  @letters = []

  line.strip.chars.each_slice(size) { |e| @map.push e }
  #@map.each { |e| puts e.join "" }
  #@visited.each { |e| puts e.map { |a| (a ? "T" : "F") }.join "" }

  (0..size-1).each {|x|
    (0..size-1).each { |y|
      recurse(x,y)
    }
  }  

  p @longest.size
end
