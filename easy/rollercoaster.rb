=begin
Steve Tran
Rollercoaster Solution
Feb 16, 2015
=end

File.open(ARGV[0]).each_line do |line|
  b = true
  line.split("").each { |c| 
    if c.match(/[a-zA-Z]/)
      if b
        print c.upcase
      else
        print c.downcase
      end
      b = !b
    else
      print c
    end
   }
end
