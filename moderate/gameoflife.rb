=begin
Steve Tran
Game of Life in Ruby!
Apr 4, 2015
=end
$stale = false
def step
  return unless !$stale

  a = Array.new ($grid.size) {Array.new}
  (0..$grid.size-1).each { |ro|
    (0..$grid.size-1).each { |co| 
      n = neighbors(ro,co)
      a[ro][co] = $grid[ro][co]
      if n < 2
        a[ro][co] = '.'
      elsif n > 3 && $grid[ro][co] == '*'
        a[ro][co] = '.'
      elsif n == 3 && $grid[ro][co] == '.'
        a[ro][co] = '*'           
      end
    }
  }

  if $grid == a
    $stale = true
  end
  $grid = a
end

def neighbors(r, c)
  sum = 0
  n = $grid.size-1
  sum += 1 unless !(r-1 >= 0 && $grid[r-1][c] == '*')
  sum += 1 unless !(c-1 >= 0 && $grid[r][c-1] == '*')
  sum += 1 unless !(r+1 <= n && $grid[r+1][c] == '*')
  sum += 1 unless !(c+1 <= n && $grid[r][c+1] == '*')
  sum += 1 unless !(c-1 >= 0 && r-1 >= 0 && $grid[r-1][c-1] == '*')
  sum += 1 unless !(c-1 >= 0 && r+1 <= n && $grid[r+1][c-1] == '*')
  sum += 1 unless !(c+1 <= n && r+1 <= n && $grid[r+1][c+1] == '*')
  sum += 1 unless !(c+1 <= n && r-1 >= 0 && $grid[r-1][c+1] == '*')
  sum
end

$grid = []
File.open(ARGV[0]).each_line do |line|
  $grid.push line.strip.split ""
end

(1..10).each { step }

$grid.each {|r| puts r.join "" }
