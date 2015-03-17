=begin
Steve Tran
Ugly numbers solution

This is pretty complicated, and doesn't work

=end
require 'debugger'


# loop through and get the permutations
def perm(input)
  max_signs = input.size - 1
  collection = []
  
  for a in (1..max_signs)
    arr = input.split ""
    
    for (0..a) 
    #if input.size i>= 2
      arr.push("+")
    #end
    end    
    
    arr.permutation.each { |x|
      if check(x, input) 
        print x.join("") + "\n"
        collect.push(x.join(""))
      end
    }

  end

end


# loop through and figure out the ones we should keep
def check(input, pattern)
  case input[0]
  when '+', '-'
    return false
  end

  case input[input.size-1]
  when '+', '-'
    return false
  end
  
  i = 0
  p = 0
  while p < pattern.size
    if plus_or_minus(input[i])
      i += 1
    elsif input[i] != pattern[p]
      return false
    else 
      p += 1
      i += 1
    end
  end

  return true
end

# plus or minus sign
def plus_or_minus(input)
  return input == '-' || input == '+'
end


File.open(ARGV[0]).each_line do |line| 
  puts line
  perm(line.strip)
end
