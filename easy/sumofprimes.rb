=begin
Steve Tran
Sum of first 1000 primes, in Ruby
Feb 16, 2015
=end

# improved over my initial primepalindrome solution
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

p = 0
sum = 0
i = 1
while p < 1000
  if prime(i)
    sum = sum + i
    p += 1
  end
  i += 1
end

puts sum
