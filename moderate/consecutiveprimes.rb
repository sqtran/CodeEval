=begin
Steve Tran
Consecutive Primes solution
Mar 25, 2015
=end

# copied from my sumofprimes solution
def prime(n)
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

def valid_necklace(a)
  (0..a.size-2).each { |i|
    if !prime(a[i]+a[i+1])
      return false
    end
  }
  return prime(a[0]+a[-1])
end

p File.read(ARGV[0])

File.open(ARGV[0]).each_line do |line|
  a = (1..line.to_i).to_a.permutation(line.to_i).select {|e| valid_necklace(e) }
  # not for the donkey hearted - rotates results to make sure they're unique
  puts a.map! {|e| e.rotate(e.find_index(e.min))}.uniq.size
end

