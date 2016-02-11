=begin
Steve Tran
Beautiful Strings Solution
Feb 11, 2016
=end

File.open(ARGV[0]).each_line do |line|

  map = Hash.new 
  line.split("").each { |e|  
    if /[a-zA-Z]/.match(e) then  
      e.downcase!
      map[e] = 0 unless map[e]
      map[e] += 1
    end
  }
  sum = 0
  multi = 26
  map.sort_by {|k,v| v}.reverse.each { |k,v| 
    sum += v * multi
    multi -= 1
  }

  p sum
end
