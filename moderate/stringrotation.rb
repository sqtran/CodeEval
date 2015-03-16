=begin
Steve Tran
String Rotation solution
Mar 16, 2015
=end

def rotated(b, t) 
  (0..b.size-1).each {
    if b == t
      return true
    else 
      t.rotate! 
    end
  }
  return false
end

File.open(ARGV[0]).each_line do |line|
  input = line.strip.split ","
  base = input[0].split ""
  test = input[1].split ""
  
  puts rotated(base, test) ? "True" : "False"
end
