=begin
Steve Tran
Skyscrapers Solution
May 4, 2015
=end
File.open(ARGV[0]).each_line do |line|
  input = []
  line.strip.split(";").each { |e|
    input.push e[1..-2].split(",").map(&:to_i)
  }
  input.sort!
  city = Hash.new
  (input.first[0]..input.last[2]).each { |i|
    city[[i..i+1]] = 0
  }

  input.each { |e|
    (e[0]..e[2]-1).each { |i|
      if e[1] > city[[i..i+1]]
        city[[i..i+1]] = e[1]
      end
    }
  }

  v = []
  height = 0
  city.each { |pair|
    if height != pair[1]
      v.push pair[0][0].to_a[0]
      v.push pair[1]
      height = pair[1]  
    end
  }

  puts v.join " "
end
