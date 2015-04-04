=begin
Steve Tran
The Labyrinth Solution
Apr 3, 2015
=end
require 'debugger'

$maze = Array.new
$visit = Array.new#($maze.size, Array.new($maze.size, 'F'))

File.open(ARGV[0]).each_line do |line| 
  $maze.push line.strip.split ""
  $visit.push ['F']*$maze[0].size
end

$start = $maze[0].find_index ' '
$finish = $maze.last.find_index ' '
puts "start = [0][#{$start}], end = [#{$maze.size}][#{$finish}]"

def print
  $maze.each { |e| puts e.join "" }
  #$visit.each { |e| puts e.join "" }
end

def move?(row, col)
  return row >= 0 && row < $maze.size-1 && col < $maze.size-1 && col >= 0 && $maze[row][col] == " " && $visit[row][col] != 'T'
end

def mark(row, col)
#  puts "marking [#{row}][#{col}]"
  $maze[row][col] = "+"
  $visit[row][col] = 'T'
end

def back(row, col)
  $maze[row][col] = " "
  $visit[row][col] = 'F'
end

def recurse (row, col)
  print
  mark(row, col)
  if row == $maze.size && col == $finish
    puts "done"
  else
#    puts "time to start moving"
    if move?(row-1,col)
#      puts "try up"
      recurse(row-1, col)
      #back(row-1, col)
    end
    if move?(row, col-1)
#      puts "try left"
      recurse(row, col+1)
      #back(row, col+1)
    end 
    if move?(row+1, col)
#      puts "try down"
      recurse(row+1, col)
      #back(row+1, col)
    end
    if move?(row, col+1)
#      puts "try right"
      recurse(row, col+1)
      #back(row, col+1)
    end

  end
end

#debugger
recurse(0,$start)
print

