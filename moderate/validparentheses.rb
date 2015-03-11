=begin
Steve Tran
Checks for valid parentheses
Mar 11, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.strip.split ""
  stack = []
  val = true
  input.each { |d| 
    if d.match(/[{(\[]/)
      stack.push d
    else
      top = stack.pop
      if  (d == ']' && top != '[') || (d == ')' && top != '(') || (d == '}' && top != '{')
        val = false
        break
      end
    end
  }

  puts (stack.size == 0 && val).to_s.capitalize
end
