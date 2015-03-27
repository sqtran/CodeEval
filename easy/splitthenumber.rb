=begin
Steve Tran
Split the Donkey Numbers solution
Mar 26, 2015
=end
File.open(ARGV[0]).each_line do |line|
  a = line.split " "
  i = a[1].index(/[+-]/)
  puts eval(a[0].slice(0,i) + a[1][i] + a[0].slice(i..-1).to_i.to_s)
end
