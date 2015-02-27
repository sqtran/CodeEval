=begin
Steve Tran
Delta Time solution
Feb 27, 2015
=end
require 'time'

File.open(ARGV[0]).each_line do |line|
  inputs = line.split(" ")
  
  t1 = Time.parse(inputs[0])
  t2 = Time.parse(inputs[1])
  delta = t1 > t2 ? t1 - t2 : t2 - t1 
  puts Time.at(delta).utc.strftime("%H:%M:%S") 
end
