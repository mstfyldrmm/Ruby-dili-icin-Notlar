# frozen_string_literal: true

a = gets.chomp.to_i

b = gets.chomp.to_i

i = a

while i <= b

  x = i / 100

  y = (i / 10) % 10

  c = i % 10

  z = 100 * x + 10 * y + c

  puts "Karamel sayıalr #{z}" if x != 0 && y != 0 && c != 0 && ((z % x).zero? && (z % y).zero? && (z % c).zero?)

  i += 1

end
