=begin
Steve Tran
Ugly numbers solution
Feb 23, 2015
=end
require 'debugger'

def is_ugly(i) 
  return i % 2 == 0 || i % 3 == 0 || i % 5 == 0 || i % 7 == 0 
end


def mix1(input)
  arr.push("+")
  arr.permutation(arr.size).each { |x| 
    if good(x, input)
      puts x.join ""
    end
  }
end

def good(input, pattern)  
 
  fst = input[0]
  lst = input[input.size-1]  

  if fst == '+' || lst == '+' || fst == '-' || lst == '-'
    return false
  end

  is = input.size - 1
  ps = 0
  for idx in (0..is)
    ch = input[idx]
    if ch == '+' || ch == '-'
     # print "found + or -"
    elsif ch != pattern[ps]
      return false
    else
      ps += 1
    end
  end
  return ps == pattern.size
end



File.open(ARGV[0]).each_line do |line| 
  puts mix1(line.strip)
 
end
