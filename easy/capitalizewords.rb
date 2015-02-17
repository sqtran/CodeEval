=begin
Steve Tran
Capitalize donkey words
=end
File.open(ARGV[0]).each_line do |line|
  #can't do s.capitalize b/c it lowers CamelCased words
  line.split(" ").each {|s| print "#{s[0].upcase}#{s[1..-1]} "}
  puts
end
