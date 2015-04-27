=begin
Steve Tran
Play with DNA Solution
Apr 26, 2015
=end
require 'debugger'
def mismatches(test)
  puts "target= #{@target} test= #{test}"
  mismatches = 0
  test.each_char.with_index { |c, idx|
    mismatches += 1 unless @target[idx] == c 
  }
  mismatches
end

File.open(ARGV[0]).each_line do |line| 
  input = line.strip.split " "
  allowed = input[1].to_i
  @target = input[0] 
  len = input[0].size
  
  results = Hash.new
  (0..input[2].size-len).each { |i|
    t = input[2][i..i+len-1]
    misses = mismatches t
    puts "#{misses} <= #{allowed}" 
    if misses <= allowed
      results[misses] = Array.new unless results[misses]
      results[misses].push t
    end
  }

  final = results.keys.sort.collect { |k| results[k].sort }.flatten

  puts final.size > 0 ? final.join(" ") : "No match"
end
