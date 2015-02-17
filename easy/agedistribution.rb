=begin
Steve Tran
Age distribution solution
Feb 17, 2015
=end
File.open(ARGV[0]).each_line do |line|
 
  if line.to_i < 0 || line.to_i > 100
    puts "This program is for humans"
  end 
 
  case line.to_i
    when 0..2 then puts "Still in Mama's arms"
    when 3..4 then puts "Preschool Maniac"
    when 5..11 then puts "Elementary school"
    when 12..14 then puts "Middle school"
    when 15..18 then puts "High school"
    when 19..22 then puts "College"
    when 23..65 then puts "Working for the man"
    when 66..100 then puts "The Golden Years"
  end
end
