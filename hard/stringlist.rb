=begin
Steve Tran
String list solution
Scored a 72/100 on Code Eval; it's using too much memory
Mar 16, 2015
=end
File.open(ARGV[0]).each_line do |line| 
  input = line.split ","
  num = input[0].to_i
  letters = input[1].strip.split ""
  cross = letters
  for i in (1..num-1) do
    cross = cross.product(letters).uniq
  end
  cross = cross.product().uniq unless num > 1
  puts cross.collect { |e| e.flatten }.collect { |e| e.join "" }.sort.join ","
end
