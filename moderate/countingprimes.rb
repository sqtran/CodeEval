=begin
Steve Tran
Coutning Prime Numbers Solution
Mar 23, 2015
=end

# copied from my primenumbers solution
def prime(n)
   # cut our search space in half
   if ((n % 2 == 0 && n != 2) || n == 1)
     return false
   end

   i = 3
   while i <= n/2
     if(n % i == 0)
       return false
     end
     i += 2 
   end
   return true
end

File.open(ARGV[0]).each_line do |line|
  input = line.split(",").map(&:to_i)
  puts (input[0]..input[1]).count{ |d| prime(d) }
end
