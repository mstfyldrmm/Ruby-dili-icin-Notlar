# frozen_string_literal: true

print 'Bir sayi giriniz:'

sayi = gets.chomp.to_i

i = 0

while i < sayi

  b = i**2

  if b == sayi

    puts "Sayinin tamsayi karekoku #{i} dir"

    exit

  end

  i += 1

end

puts 'Sayinin tam sayi karekoku yoktur'
