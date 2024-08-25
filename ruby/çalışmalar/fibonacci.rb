# frozen_string_literal: true

a = 1

b = 1

i = 1

c = 0

print('n degerini girin:')

n = gets.chomp.to_i

while i <= n

  a = b

  b = c

  c = a + b

  puts "#{i}.eleman #{c}"

  i += 1

end
