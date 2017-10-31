=begin
Steve Tran
Morse code solution
Oct 30, 2017
=end
morse = { }
morse['A'] = ".-"
morse['B'] = "-..."
morse['C'] = "-.-"
morse['D'] = "-.."
morse['E'] = "."
morse['F'] = "..-."
morse['G'] = "--."
morse['H'] = "...."
morse['I'] = ".."
morse['J'] = ".---"
morse['K'] = "-."
morse['L'] = ".-.."
morse['M'] = "--"
morse['N'] = "-."
morse['O'] = "---"
morse['P'] = ".--."
morse['Q'] = "--.-"
morse['R'] = ".-."
morse['S'] = "..."
morse['T'] = "-"
morse['U'] = "..-"
morse['V'] = "...-"
morse['W'] = ".--"
morse['X'] = "-..-"
morse['Y'] = "-.--"
morse['Z'] = "--.."
morse['1'] = ".----"
morse['2'] = "..---"
morse['3'] = "...--"
morse['4'] = "....-"
morse['5'] = "....."
morse['6'] = "-...."
morse['7'] = "--..."
morse['8'] = "---.."
morse['9'] = "----."
morse['0'] = "-----"

File.open(ARGV[0]).each_line do |line|
  line.split("  ").each do |w| 
    w.split(" ").each do |c| 
      print morse.key(c) 
    end
    print " " unless w == line.split("  ").last
  end 
  puts
end
