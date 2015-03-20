=begin
Steve Tran
Color Code Converter solution
Mar 20, 2015
=end
def format(r, g, b)
  return "RGB(#{r.round},#{g.round},#{b.round})"
end

def from_cmyk(val)
  val = val.split(",").map(&:to_f)
  r = 255 * (1-val[0]) * (1-val[3])
  g = 255 * (1-val[1]) * (1-val[3])
  b = 255 * (1-val[2]) * (1-val[3])
  
  format(r, g, b)
end

def from_hsl(val)
  val = val.split(",").map(&:to_f)
  h,s,l = val[0], val[1]/100, val[2]/100
  
  c = (1 - (2*l - 1).abs) * s
  x = c * (1 - (((h/60)%2) - 1).abs)
  m = l - c/2

  r, g, b = 0, 0, 0
  if h >= 0 && h < 60
    r, g, b = c+m, x+m, m
  elsif h >= 60 && h < 120
    r, g, b = x+m, c+m, m
  elsif h >= 120 && h < 180
    r, g, b = m, c+m, x+m
  elsif h >= 180 && h < 240
    r, g, b = m, x+m, c+m
  elsif h >= 240 && h < 300
    r, g, b = x+m, m, c+m
  else
    r, g, b = c+m, m, x+m
  end
  
  format(r*255, g*255, b*255)
end

def from_hsv(val)
  val = val.split(",").map(&:to_f)
  h,s,v = val[0], val[1]/100, val[2]/100
  
  c = v * s
  x = c * (1 - (((h/60)%2) - 1).abs)
  m = v - c
  
  r, g, b = 0, 0, 0
  if h >= 0 && h < 60
    r, g, b = c+m, x+m, m
  elsif h >= 60 && h < 120
    r, g, b = x+m, c+m, m
  elsif h >= 120 && h < 180
    r, g, b = m, c+m, x+m
  elsif h >= 180 && h < 240
    r, g, b = m, x+m, c+m
  elsif h >= 240 && h < 300
    r, g, b = x+m, m, c+m
  else
    r, g, b = c+m, m, x+m
  end
  
  format(r*255, g*255, b*255)
end


def from_hex(val)
  format(val[0..1].to_i(16), val[2..3].to_i(16),val[4..5].to_i(16))
end

File.open(ARGV[0]).each_line do |line|
  /HSL\((?<hsl>([0-9,]+))\)|HSV\((?<hsv>([0-9,]+))\)|#(?<hex>([0-9A-Za-z]+))|\((?<cmyk>([0-9.,]+))\)/ =~ line
  puts from_cmyk(cmyk) unless !cmyk
  puts from_hsl(hsl) unless !hsl
  puts from_hsv(hsv) unless !hsv
  puts from_hex(hex) unless !hex
end
