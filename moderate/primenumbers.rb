=begin
Steve Tran
Prime Numbers less than n Solution
Probably O(n*n), best solution would be n*log(n)
Feb 16, 2015
=end

# copied from my sumofprimes solution
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
  i = 0
  arr = []
  while i < line.to_i
    if prime(i)
      arr.push(i)
    end
    i += 1
  end
  puts arr.join(",")
end
