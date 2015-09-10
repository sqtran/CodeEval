=begin
Steve Tran
Robo and Robitta solution
Sep 9, 2015
=end

File.open(ARGV[0]).each_line do |line| 


  v = line.split("|")
  x = v[0].split("x").map(&:to_i)
  y = v[1].split(" ").map(&:to_i)

  arr = Array.new(x[0]) {Array.new (x[1]) {"."} } 
  arr[y[0]-1][y[1]-1] = "x"

  counter = 0
  found = false


  while arr.size > 0 && !found
    arr.shift.each { |e|
      if e == "x"
        found = true
        counter+=1
        break
      else
        counter+=1
      end
    }
    arr = arr.transpose.reverse
  end

  puts counter
end