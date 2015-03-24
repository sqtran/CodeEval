=begin
Steve Tran
Minimum Path Sum Solution
Surprised this didn't stack overflowed...
Mar 23, 2015
=end

@table = nil
@sum = 0

def find_min(x, y)
  if(x == @table.size-1 && y == x)
    return @table[x][y].to_i
  else

    right = @table[x][y].to_i + find_min(x+1, y) unless x+1 == @table.size
    down  = @table[x][y].to_i + find_min(x, y+1) unless y+1 == @table.size
  
    if right && down
      return [right, down].min
    else
      return !right ? down : right
    end
  end

end

File.open(ARGV[0]) do |f|
  while !f.eof
    size = f.readline.to_i
    @table = Array.new(size) {Array.new(size)}
    (0..size-1).each { |i|
      @table[i] = f.readline.split ","
    }
    
    puts find_min(0, 0)
  end
end