# frozen_string_literal: true

print 'Kare sayısını giriniz: '
n = gets.chomp.to_i

print 'En büyük karenin kenar uzunluğunu giriniz: '
a = gets.chomp.to_f

toplam_alan = 0.0

i = 0

while i < n
  toplam_alan += (a * a)

  a /= 2

  i += 1
end

puts "Toplam alan = #{toplam_alan}"
