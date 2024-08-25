# frozen_string_literal: true

i = 100

while i < 1000

  a = i / 100

  b = (i / 10) % 10

  c = i % 10

  x = 100 * a + 10 * b + c

  kup = a**3 + b**3 + c**3

  puts x if kup == x

  i += 1

end
