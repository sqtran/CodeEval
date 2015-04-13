=begin
Steve Tran
Telephone words solution
Apr 13, 2015
=end

$characters = Hash.new
DATA.each_line do |line| 
  input = line.strip.split " "
  $characters[input[0]] = input[1].split ""
end

File.open(ARGV[0]).each_line do |line|
  input = line.strip.split ""

  arr = $characters[input.shift]
  input.each {|e| 
    arr = arr.product($characters[e])
  }
  puts arr.collect! {|e| e.flatten.join ""}.join ","
end

__END__
0 0
1 1
2 abc
3 def
4 ghi
5 jkl
6 mno
7 pqrs
8 tuv
9 wxyz
