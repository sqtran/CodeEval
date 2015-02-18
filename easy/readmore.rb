=begin
Steve Tran
Donkeys need to Read More Solution
Feb 18, 2015
=end
require 'debugger'
File.open(ARGV[0]).each_line do |line|
  #debugger
  if line.strip.length > 55
    line = line[0..39]
    idx = line.rindex(" ")
    if idx
      line = line[0..line.rindex(" ")].strip
    end
    puts line + "... <Read More>"
  else
    puts line.strip
  end
end
