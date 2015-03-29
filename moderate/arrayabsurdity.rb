=begin
Steve Tran
Array Absurdity solution
Mar 29, 2015
=end
File.open(ARGV[0]).each_line do |line|
  nums = Hash.new
  line.split(";")[1].split(",").map(&:to_i).each { |e|
    if nums.include?(e)
      puts e
      break
    else
      nums.store(e, nil)
    end
  }
end