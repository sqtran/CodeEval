=begin
Steve Tran
Donkey Words to Digit Solution
Feb 27, 2015
=end

File.open(ARGV[0]).each_line do |line|
  puts line.strip.gsub(/zero/,'0').gsub(/one/,'1').gsub(/two/,'2').gsub(/three/,'3').gsub(/four/,'4')
       .gsub(/five/,'5').gsub(/six/,'6').gsub(/seven/,'7').gsub(/eight/,'8').gsub(/nine/,'9').gsub(/;/,'')
end
