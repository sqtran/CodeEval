=begin
Steve Tran
Trailing Strings example
Feb 16, 2015
=end

File.open(ARGV[0]).each_line do |line|
  inputs = line.split(",") 
  if inputs[0].include?(inputs[1].rstrip) #nasty ass \n at the end
    puts "1"
  else
    puts "0"
  end
end
