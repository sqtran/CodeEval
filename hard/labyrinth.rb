=begin
Steve Tran
The Labyrinth Solution
Apr 3, 2015
=end

$maze = Array.new
$visit = Array.new

File.open(ARGV[0]).each_line do |line| 
  $maze.push line.strip.split ""
  $visit.push [false]*$maze[0].size
end

$start = $maze[0].find_index ' '
$finish = $maze.last.find_index ' '

def showboard
  $maze.each { |e| puts e.join "" }
end

def move?(row, col)
  return row >= 0 && row < $maze.size && col < $maze[0].size && col >= 0 && $maze[row][col] == " " && $visit[row][col] == false
end

def mark(row, col)
  $maze[row][col] = "+"
  $visit[row][col] = true
end

def back(row, col)
  $maze[row][col] = " "
  $visit[row][col] = false
end

def countsteps
  count = 0
  $maze.each { |r| 
    r.each {|c| 
      count += 1 unless c != "+"
    }  
  }
  return count
end


@shortest = nil
@solution

def recurse (row, col)

  mark(row, col)
  if row == $maze.size-1 && col == $finish
    if !@shortest || countsteps < @shortest
      @shortest = countsteps

      @solution = Array.new
      $maze.each {|e| @solution.push e.clone}
    end
  else

    if move?(row-1,col)
      recurse(row-1, col)
      back(row-1, col)
    end
    if move?(row, col-1)
      recurse(row, col-1)
      back(row, col-1)
    end 
    if move?(row+1, col)
      recurse(row+1, col)
      back(row+1, col)
    end
    if move?(row, col+1)
      recurse(row, col+1)
      back(row, col+1)
    end

  end
end

recurse(0,$start)
@solution.each { |e| puts e.join "" }
