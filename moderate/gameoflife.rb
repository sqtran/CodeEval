=begin
Steve Tran
Game of Life in Ruby!
Apr 4, 2015
=end
$stale = false
def step
  return unless !$stale

  (0..$n).each { |ro|
    (0..$n).each { |co|
      n = neighbors(ro,co)
      if n < 2
        $a[ro][co] = '.'
      elsif n > 3 && $grid[ro][co] == '*'
        $a[ro][co] = '.'
      elsif n == 3 && $grid[ro][co] == '.'
        $a[ro][co] = '*'
      end
    }
  }
  if $grid == $a
    $stale = true
    return
  end

  (0..$n).each { |ro|
    if $grid[ro] != $a[ro]
      (0..$n).each { |co|
        $grid[ro][co] = $a[ro][co]
      }
    end
  }
end

def neighbors(r, c)
  sum = 0
  sum += 1 unless !(r-1 >= 0 && $grid[r-1][c] == '*')
  sum += 1 unless !(c-1 >= 0 && $grid[r][c-1] == '*')
  sum += 1 unless !(r+1 <= $n && $grid[r+1][c] == '*')
  sum += 1 unless !(c+1 <= $n && $grid[r][c+1] == '*')
  sum += 1 unless !(c-1 >= 0 && r-1 >= 0 && $grid[r-1][c-1] == '*')
  sum += 1 unless !(c-1 >= 0 && r+1 <= $n && $grid[r+1][c-1] == '*')
  sum += 1 unless !(c+1 <= $n && r+1 <= $n && $grid[r+1][c+1] == '*')
  sum += 1 unless !(c+1 <= $n && r-1 >= 0 && $grid[r-1][c+1] == '*')
  sum
end

$grid = []
File.open(ARGV[0]).each_line do |line|
  $grid.push line.strip.split ""
end

$n = $grid.size-1
$a = Array.new ($grid.size) {Array.new}
(0..$n).each { |ro|
  (0..$n).each { |co|
    $a[ro][co] = $grid[ro][co]
  }
}

(1..10).each { step }
$grid.each {|r| puts r.join "" }
