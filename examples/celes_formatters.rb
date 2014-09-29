require 'celes'

puts "3 decimal places for 2.345 radians in"
s, idmsf = Celes::a2af(3, 2.345)
p s
p idmsf

puts "formatted -45:13:27.2 degrees in"
a = Celes::af2a('-', 45, 13, 27.2, &a)
p a

puts "normalize range to Pi radians"
a = Celes::anp(-0.1)
p a