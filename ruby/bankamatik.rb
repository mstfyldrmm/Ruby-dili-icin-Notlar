# frozen_string_literal: true

print "Islemler\n\n 1-Para cekme \n 2-Para yatirma\n 3-Havale\n 4 -Bakiye sorgulama\n 5-Kart iade \n\n\n"

bakiye = 1000

print 'Lutfen gecerli islemi tuslayiniz:'

islem = gets.chomp.to_i

case islem
when 1
  print 'Cekmek istediginiz tutari giriniz:'
  tutar = gets.chomp.to_i
  if tutar > bakiye
    puts 'Yetersiz bakiye lutfen yeniden tuslayiniz'
  else
    bakiye -= tutar
    puts "Kalan bakiyeniz #{bakiye}"
  end
when 2
  print 'Yatirmak istediginiz tutari giriniz :'
  tutar = gets.chomp.to_i
  bakiye += tutar
  puts "Yeni bakiyeniz #{bakiye}"
when 3
  print 'Havale etmek  istediginiz tutari giriniz:'
  tutar = gets.chomp.to_i
  if tutar > bakiye
    puts 'Yetersiz bakiye lutfen yeniden tuslayiniz'
  else
    bakiye -= tutar
    puts "Kalan bakiyeniz #{bakiye}"
  end
when 4
  puts "Bakiyeniz :#{bakiye}"
when 5
  puts 'Kartiniz iade ediliyor iyi günler :D'
end
