=begin
Steve Tran
Magic Numbers  solution
Apr 24, 2015
=end

def magic?(ii)
  nums = ii.split("").map(&:to_i)
  start = nums.first
  if nums.uniq.size != nums.size
    return false
  end

  visit = nums.clone
  (0..nums.size-1).each {
    return false unless visit.delete nums.first
    nums.rotate! nums.first
  }

  return visit.size == 0 && nums.first == start
end

File.open(ARGV[0]).each_line do |line|
  input = line.strip.split(" ").map(&:to_i)

  magics = []
  (input[0]..input[1]).each { |i|
    magics.push i unless !magic? i.to_s
  }

  puts magics.size > 0 ? magics.join(" ") : -1
end
