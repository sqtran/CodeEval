=begin
Steve Tran
ASCII Decryption solution
This is super hacky!
Mar 17, 2015
=end
def upper(c)
  return /[A-Z]/.match(c)
end

File.open(ARGV[0]).each_line do |line| 
  input = line.split("|").collect {|e| e.strip}
  data = input[2].split(" ")
  ss = input[0].to_i-1
  ch = input[1].ord
  
  # loop through and figure out where we have pairs of twos
  candidates = []  
  for i in (0..data.size-ss) do 
    test = data[i..i+ss]
    count = 1
    for j in (i+ss+1..data.size-ss) do
      if test == data[j..j+ss]
        count += 1
      end 
      if count > 2
        break
      end
    end
    if count == 2
      # might have found a bunch in between 2 whole words
      candidates.push test
    end
  end
  
  offset = nil
  # start hacking away trying to find something that makes sense
  for i in (0..candidates.size-1) do
    diff = candidates[i][-1].to_i - ch
    if diff >= 0 && upper((data[0].to_i-diff).chr)
      offset = diff
      break 
    end
  end 

  if offset
    data.each{ |e| 
      print (e.to_i-offset).chr
    }
  end

  puts
  # can't believe this worked, they must have a super simple test suite
end
