=begin
Steve Tran
Filename pattern solution 
Feb 27, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.split " "
  p = "^" + input[0].gsub(/[.]/, '[.]').gsub(/[*]/, '.{0,}').gsub(/[?]/, '.') + "$"
  input.delete_at(0)
  r = input.select { |x| x.match(p)} 
  puts r.size > 0 ? r.join(" ") : "-"
end
