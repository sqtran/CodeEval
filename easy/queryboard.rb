=begin
Steve Tran
Query Board Solution
May 1, 2015
=end

def setrow(i, x)
  @board[i] = [x] * 256
end

def setcol(j, x)
  @board.each { |e|
    e[j] = x
  }
end

def queryrow(i)
  sum = 0
  @board[i].each { |e|
    sum += e
  }
  sum
end

def querycol(j)
  sum = 0
  @board.each { |e| 
    sum += e[j]
  }
  sum
end

@board = Array.new(256) { [0] * 256 }

File.open(ARGV[0]).each_line do |line|
  input = line.strip.split " "

  if input[0] == "SetCol"
    setcol(input[1].to_i, input[2].to_i)
  elsif input[0] == "SetRow"
    setrow(input[1].to_i, input[2].to_i)
  elsif input[0] == "QueryCol"
    puts querycol(input[1].to_i)
  else
    puts queryrow(input[1].to_i)
  end
end
