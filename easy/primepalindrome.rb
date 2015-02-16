=begin
Steve Tran
Silly program to find largest prime palindrome less than 1000 in Ruby
Feb 16, 2015
=end

def prime(n)
   i = 2
   while i < n/2
     if(n % i == 0)
       return false
     end
     i = i + 1 
   end
   return true
end

i = 1000
while i > 1 
  if i.to_s.reverse == i.to_s && prime(i)
    puts "#{i}"
    break
  end
  i = i-1
end
