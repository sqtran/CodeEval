=begin
Steve Tran
Read More Solution
Feb 17, 2015
=end

File.open(ARGV[0]).each_line do |line|
  if line.length > 55
    puts line[0..39].strip + "... <Read More>"
  else
    puts line
  end
end
