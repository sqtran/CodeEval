=begin
Steve Tran
Gronsfeld Cipher Solution
Only 95/100, not sure what's wrong with it
May 4, 2015
=end

vocabulary = [" ", "!", '"', "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

File.read(ARGV[0]).each_line do |line|
  input = line.strip.split ";"
  decrypt = ""
  idx = 0
  input[1].each_char { |chr|
    key = vocabulary.index(chr) - input[0][idx%input[0].size].to_i
    decrypt << vocabulary[key]
    idx += 1
  }
  puts decrypt
end
