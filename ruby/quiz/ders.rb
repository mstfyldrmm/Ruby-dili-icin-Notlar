# frozen_string_literal: true

a = gets.chomp_to_i

b = gets.chomp_to_i

i = a

while i <= b

  a = i / 100

  b = (i / 10) % 10

  c = i % 10

  x = 100 * a + 10 * b + c

  i += 1

end
