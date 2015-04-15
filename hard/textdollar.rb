=begin
Steve Tran
Text Dollar Solution
Apr 14, 2015
=end
$map = Hash.new
DATA.each_line.collect{ |e| e.split " " }.each do |line|
  $map[line[0].to_i] = line[1]
end

def parse(val)
  r = ''
  
  c = val/100
  if c > 0
    r += "#{$map[c]}Hundred"
    val -= 100 * c
  end

  if val > 20
    c = val/10
    r += "#{$map[c*10]}"
    val -= 10 * c
  end

  if val > 0 
    r += "#{$map[val]}"
  end

  r
end

File.open(ARGV[0]).each_line do |line| 
  line = line.to_i
  val = ''
  millions = line/1000000
  if millions > 0
    val += parse(millions) + "Million"
    line -= millions * 1000000
  end

  thousands = line/1000
  if thousands > 0
    val += parse(thousands) + "Thousand"
    line -= thousands * 1000
  end

  val += parse(line)

  puts val + "Dollars"
end

__END__
0 Zero
1 One
2 Two
3 Three
4 Four
5 Five
6 Six
7 Seven
8 Eight
9 Nine
10 Ten
11 Eleven
12 Twelve
13 Thirteen
14 Fourteen
15 Fifteen
16 Sixteen
17 Seventeen
18 Eighteen
19 Nineteen
20 Twenty
30 Thirty
40 Forty
50 Fifty
60 Sixty
70 Seventy
80 Eighty
90 Ninety
