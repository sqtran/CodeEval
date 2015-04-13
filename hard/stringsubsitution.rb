=begin
Steve Tran
String Subsitution solution
Apr 13, 2015
=end

File.open(ARGV[0]).each_line do |line|
  input = line.strip.split ";"
  val = input[0] 
  r = input[1].split(",").each_slice(2)
  
  h = Hash.new
  k = 'a'
  r.each do |a|
    if val.index(a[0])
      val.gsub!(a[0], k)
      h[k] = a[1]
      k.next!
    end
  end
 
  h.each { |k, v| val.gsub!(k, v) }
  puts val
end
