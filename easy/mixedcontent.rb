=begin
Steve Tran
Mixed Content solution
Mar 14, 2015
=end
File.open(ARGV[0]).each_line do |line|
  nums = []
  words = []
  line.strip.split(",").each { |v| 
    if v.match(/[0-9]+/)
      nums.push v
    else
      words.push v
    end
  }

  output = words.join(",")
  output += "|" unless words.size == 0 || nums.size == 0
  output += nums.join(",")
  
  puts output
end