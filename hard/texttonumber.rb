=begin
Steve Tran
Text to Number Solution
Apr 3, 2015
=end

$map = Hash.new
DATA.each_line.collect{ |e| e.split " " }.each do |line|
  $map[line[0]] = line[1].to_i
end

def parse(arr)
  sum = 0
  (0..arr.size-1).each { |i|
    case $map[arr[i]]
      when 100, 1000,1000000
        sum = sum * $map[arr[i]]
      else
        sum += $map[arr[i]]
    end
  }
  sum
end

File.open(ARGV[0]).each_line do |line| 
  line = line.strip.split " "

  neg = 1
  if line[0] == "negative"
    neg = -1
    line.shift
  end  

  sum = 0
  m = line.find_index("million")
  sum += parse(line.shift(m+1)) unless !m

  m = line.find_index("thousand")
  sum += parse(line.shift(m+1)) unless !m

  puts (sum + parse(line)) * neg
end

__END__
negative -1
zero 0
one 1
two 2
three 3
four 4
five 5
six 6
seven 7
eight 8
nine 9
ten 10
eleven 11
twelve 12
thirteen 13
fourteen 14
fifteen 15
sixteen 16
seventeen 17
eighteen 18
nineteen 19
twenty 20
thirty 30
forty 40
fifty 50
sixty 60
seventy 70
eighty 80
ninety 90
hundred 100
thousand 1000
million 1000000
