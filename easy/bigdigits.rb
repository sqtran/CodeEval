=begin
Steve Tran
Donkey magification program for CodeEval
Feb 16, 2015
=end

def row1(input)
  case input
    when 0, 6, 8, 9
      return "-**--"
    when 1
      return "--*--"
    when 2..3
      return "***--"
    when 4
      return "-*---"
    when 5, 7
      return "****-"
    end
end

def row2(input)
  case input
    when 0, 4, 8, 9
      return "*--*-"
    when 1
      return "-**--"
    when 2, 3
      return "---*-"
    when 5, 6
      return "*----"
    when 7
      return "---*-"
    end
end

def row3(input)
  case input
    when 0
      return "*--*-"
    when 1, 7
      return "--*--"
    when 2, 3, 8
      return "-**--"
    when 4
      return "****-"
    when 5, 6
      return "***--"
    when 9
      return "-***-"
    end
end

def row4(input)
  case input
    when 0, 6, 8
      return "*--*-"
    when 1
      return "--*--"
    when 2
      return "*----"
    when 3, 4, 5, 9
      return "---*-"
    when 7
      return "-*---"
    end
end

def row5(input)
  case input
    when 0, 6, 8, 9
      return "-**--"
    when 1
      return "-***-"
    when 2
      return "****-"
    when 3, 5
      return "***--"
    when 4
      return "---*-"
    when 7
      return "-*---"
    end
end

def row6()
  return "-----"
end

def magnify(input)
  pieces = input.to_s.split ""
  pieces.each { |i| print row1 i.to_i}
  puts
  pieces.each { |i| print row2 i.to_i}
  puts 
  pieces.each { |i| print row3 i.to_i}
  puts  
  pieces.each { |i| print row4 i.to_i}
  puts
  pieces.each { |i| print row5 i.to_i}
  puts
  pieces.each { |i| print row6}
end

File.open(ARGV[0]).each_line do |line|
  magnify line.gsub(/[^0-9]/i, '')
  puts
end
