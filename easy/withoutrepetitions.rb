=begin
Steve Tran
Without Repetitions solution
Mar 15, 2015
=end
File.open(ARGV[0]).each_line { |line|
  puts line.gsub(/(.)(\1)+/, '\1')
}
