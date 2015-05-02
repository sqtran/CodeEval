=begin
Steve Tran
Ray of Light Solution
May 1, 2015
=end

require 'debugger'

def inside(x,y)
  return x > 0 && x < 9 && y > 0 && y < 9 && @grid[x][y] != "#"
end

def is_not(r, c, v)
  return inside(r,c) && @grid[r][c] != v
end

def is(r, c, v)
  return inside(r,c) && @grid[r][c] == v
end

def has_light(r,c)
  return is(r-1, c-1, "\\") || is(r-1, c-1, "X") || 
         is(r+1,c-1, "/") || is(r+1, c-1, "X")  ||
         is(r+1, c+1, "\\") || is(r+1, c+1, "X")  ||
         is(r-1,c+1, "/") || is(r-1, c+1, "X") 
end


def step
  (0..9).each do |r|
    (0..9).each do |c|

      if @grid[r][c] == "*" && has_light(r,c)
         if is(r-1, c-1, " ")
           @grid[r-1][c-1] = "\\"
           return false
         end
         if is(r+1,c-1, " ")
           @grid[r+1][c-1] = "/"
           return false
         end

         if is(r+1, c+1, " ")
           @grid[r+1][c+1] = "\\"
           return false
         end

         if is(r-1,c+1, " ")
           @grid[r-1][c+1] = "/"
           return false
         end

      end  

      if @grid[r][c] == "/"
        # upper right
        if is(r-1, c+1, " ") && is_not(r-1, c+1, "*")

          if is(r-1,c+1, "\\")
            @grid[r-1][c+1] = "X"
          else
            @grid[r-1][c+1] = "/"
          end

          return  false
        end

        if is(r-1, c+1, "\\") && is_not(r-1, c+1, "*")
          @grid[r-1][c+1] = "X"
          puts "upper right X"
          return false
        end

        
        # lower left
        if is(r+1, c-1, " ") && is_not(r+1, c-1, "*")
          
          if is(r+1,c-1, "\\")
            @grid[r+1][c-1] = "X"
          else
            @grid[r+1][c-1] = "/"
          end

          return  false
        end

        if is(r+1,c-1, "\\")
          @grid[r+1][c-1] = "X"
          puts "lower left X"
          return false
        end
      end

      if @grid[r][c] == "\\"
        
        if is(r-1, c-1, " ") && is_not(r-1,c-1, "*")

          if is(r-1,c-1, "/")
            @grid[r-1][c-1] = "X"
          else
            @grid[r-1][c-1] = "\\"
          end
          return  false
        end
       
        if is(r+1, c+1, " ") && is_not(r+1,c+1, "*")
          if is(r+1,c+1, "/")
            @grid[r+1][c+1] = "X"
          else
            @grid[r+1][c+1] = "\\"
          end
          return  false
        end
      end

      # check walls
      if @grid[r][c] == "#"
        
        # right wall
        if is(r,c-1, "/") && is_not(r-1,c-1, "\\")
          @grid[r-1][c-1] = "\\"
          return  false
        end
        
        # top wall
        if is(r+1,c, "\\") && is_not(r+1,c-1, "/")
          @grid[r+1][c-1] = "/"
          return  false
        end

        # left wall
        if is(r,c+1, "/") && is_not(r+1,c+1, "\\")
          @grid[r+1][c+1] = "\\"
          puts "left wall hit /"
          return false
        end

        if is(r,c+1, "\\") && is_not(r-1,c+1, "/")
          @grid[r-1][c+1] = "/"
          puts "left wall hit \\"
          return false
        end

        # bottom wall
        if is(r-1,c, "\\") && is_not(r-1,c+1, "/")
          @grid[r-1][c+1] = "/"
          return  false
        end
      end    

    end
  end

  return true
end

def show
  @grid.each{ |e|
    puts e.join "" 
  }
end

File.open(ARGV[0]).each_line do |line|
  @grid = Array.new
  input = line.strip.split ""
  input.each_slice(10) { |e|
    @grid.push e
  }

  while !step do
   # show
 #   debugger
  end

  show
end

