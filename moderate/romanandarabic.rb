=begin
Steve Tran
Roman and Arabic Number solution 
Mar 15, 2015
=end
def convert(i)
  case i
  when "I"
    return 1
  when "V"
    return 5
  when "X"
    return 10
  when "L"
    return 50
  when "C"
    return 100
  when "D"
    return 500
  when "M"
    return 1000
  end
end

File.open(ARGV[0]).each_line do |line|
  chunks = line.scan(/.{2}/)
  sum = 0
  for i in (0..chunks.size-1) do 
    val = chunks[i][0].to_i * convert(chunks[i][1])
    if i+1 < chunks.size && convert(chunks[i+1][1]) > convert(chunks[i][1])
      sum -= val
    else
      sum += val
    end
  end

  puts sum
end
