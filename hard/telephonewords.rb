=begin
Steve Tran
Telephone words solution
Apr 13, 2015
=end
$characters = Hash.new
$characters["0"] = ["0"]
$characters["1"] = ["1"]
$characters["2"] = ["a","b","c"]
$characters["3"] = ["d","e","f"]
$characters["4"] = ["g","h","i"]
$characters["5"] = ["j","k","l"]
$characters["6"] = ["m","n","o"]
$characters["7"] = ["p","q","r","s"]
$characters["8"] = ["t","u","v"]
$characters["9"] = ["w","x","y","z"]

File.open(ARGV[0]).each_line do |line|
  input = line.strip.split ""

  arr = $characters[input.shift]
  input.each {|e|
    arr = arr.product($characters[e])
  }
  puts arr.collect! {|e| e.flatten.join ""}.join ","
end
