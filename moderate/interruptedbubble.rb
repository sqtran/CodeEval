=begin
Steve Tran
Interrupted Bubble Sort solution
Mar 16, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = line.split "|"
  data = input[0].split(" ").map(&:to_i)
  iteration = input[1].strip.to_i
  done = false
  while iteration > 0 && !done do  
    done = true
    (0..data.size-2).each { |i| 
      if data[i] > data[i+1]
        data[i], data[i+1] = data[i+1], data[i]
        done = false
      end
    }
    iteration -= 1
  end
 
  puts data.join " "
end
