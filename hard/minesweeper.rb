=begin
Steve Tran
Minesweeper Solution
May 4 2015
=end

def inbound(r,c)
  return r>= 0 && r < @board.size && c>= 0 && c < @board[0].size
end

def sweep(r,c)
  mines = 0
  (r-1..r+1).each { |i|
    (c-1..c+1).each { |j|
      if inbound(i,j) && @board[i][j] == "*" 
        mines += 1
      end
    }
  }
  return mines
end

@board

def showboard
  puts @board.join""
end

File.open(ARGV[0]).each_line do |line|
  @board = Array.new

  input = line.strip.split ";"
  size  = input[0].split(",").map(&:to_i)
  input[1].split("").each_slice(size[1]).each { |e|
    @board.push e
  }

  (0..@board.size-1).each {|r|
    (0..@board[0].size-1).each {|c|
      if @board[r][c] != "*"
        @board[r][c] = sweep(r,c)
      end
    }
  }
  showboard
end
