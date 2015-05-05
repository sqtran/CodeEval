=begin
Steve Tran
Computer Terminal
Apr 6, 2015
=end

$terminal = Array.new(10) { [' ']*10}
$x, $y = 0, 0
$overwrite = true

def clear
  $terminal = Array.new(10) { [' ']*10}
end

def top
  $x, $y = 0, 0
end

def begins
  $y = 0
end

def down
  $x += 1 unless $x+1 > 9
end

def up
  $x -= 1 unless $x-1 < 0
end

def left 
  $y -= 1 unless $y-1 < 0
end

def right
  $y += 1 unless $y+1 > 9
end 

def erase
  $terminal[$x][$y..-1] = ' '
end

def insert
  $overwrite = false
end

def overwrite
  $overwrite = true
end

def move(x, y)
  $x, $y = x, y
end

def printall
  $terminal.each { |e| puts e.join ""}
end

def write(v)
  if $overwrite
    $terminal[$x][$y] = v
  else
    $terminal[$x].insert($y, v)
    $terminal[$x].pop
  end
  right
end

File.open(ARGV[0]).each_line do |line|
  input = line.strip.split ""

  while input.size > 0
    chr = input.shift
    if chr == "^"
      chr = input.shift
      case chr
        when 'h'
          top
        when 'c'
          clear
        when 'b'
          begins
        when 'd'
          down
        when 'u'
          up
        when 'l'
          left
        when 'r'
          right
        when 'e'
          erase
        when 'i'
          insert
        when 'o'
          overwrite
        when '^'
          write(chr)
        else
          y = input.shift
          move(chr.to_i, y.to_i)
      end
    else
       write(chr)     
     end
  end

end
printall
