# frozen_string_literal: true

puts('Bir sayi giriniz:')

sayi = gets.chomp.to_i

i = 1

while i < sayi

  j = 1

  while j < i

    puts i if sayi % i != 0 && i % j != 0

    j += 1

  end

  i += 1

end
