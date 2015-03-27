=begin
Steve Tran
Consecutive Primes solution
Mar 25, 2015
=end


t1 = Time.now
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
  b = valid_necklace2(a)
  puts "#{a} ==== #{b}"
  b
end

def valid_necklace2(a)
  (0..a.size-2).each { |i|
    if !prime(a[i]+a[i+1]) 
      return false
    end
  }
  return prime(a[0]+a[-1])
end

p File.read(ARGV[0])

File.open(ARGV[0]).each_line do |line|
  a = (1..line.to_i).to_a.permutation(line.to_i)
  puts "permutations took #{Time.now - t1} miliseconds"


  puts "size = " + a.size.to_s
  counter = 0
  a.each { |e| counter += 1 }
  puts "count = #{counter}"


  puts "starting rotation" 
  # not for the donkey hearted - rotates results to make sure they're unique
  #a = a.map {|e| e.rotate!(e.find_index(1))}
  a = a.each { |e|
    puts "#{e} #{e.rotate! (e.find_index(1))}"
  }
  puts "rotate took #{Time.now - t1} miliseconds"

  a.uniq!
  puts "unique took #{Time.now - t1} miliseconds"


  a = a.select {|e| valid_necklace(e) }
  puts "valid_necklace took #{Time.now - t1} miliseconds"
  
  puts a.size
  
end

t2 = Time.now

puts "#{t2-t1} miliseconds"
