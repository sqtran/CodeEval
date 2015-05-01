=begin
Steve Tran
Number operations (42 game) solution
Apr 30, 2015
=end

@ops = ["+", "-", "*"]

def fortytwo? (e) 
  @ops.each { |op1|
    @ops.each { |op2|
      @ops.each { |op3|
        @ops.each { |op4|
          sum = e[0].send op1, e[1]
          sum = sum.send op2, e[2]
          sum = sum.send op3, e[3]
          sum = sum.send op4, e[4]
          return true unless 42 != sum
        }
      }        
    }
  }
  return false
end

File.open(ARGV[0]).each_line do |line|
  arr =  line.strip.split(" ").map(&:to_i).permutation

  valid = false
  arr.each { |e| 
    valid = fortytwo? e
    break unless !valid
  } 

  puts valid ? "YES" : "NO"
end
