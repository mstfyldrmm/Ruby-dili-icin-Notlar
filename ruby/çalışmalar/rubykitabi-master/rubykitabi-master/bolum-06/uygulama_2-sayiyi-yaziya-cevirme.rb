# frozen_string_literal: true

def yaziyla(sayi)
  binler_yuzler = ['', '', 'iki', 'üç', 'dört', 'beş', 'altı', 'yedi', 'sekiz', 'dokuz']
  onlar         = ['', 'on', 'yirmi', 'otuz', 'kırk', 'elli', 'altmış', 'yetmiş', 'seksen', 'doksan']
  birler        = ['', 'bir', 'iki', 'üç', 'dört', 'beş', 'altı', 'yedi', 'sekiz', 'dokuz']

  birler_basamagi = sayi % 10
  onlar_basamagi = (sayi % 100) / 10
  yuzler_basamagi = (sayi % 1000) / 100
  binler_basamagi = sayi.div(1000)

  yazi =  ''
  yazi += "#{binler_yuzler[binler_basamagi]}bin" if binler_basamagi.positive?
  yazi += "#{binler_yuzler[yuzler_basamagi]}yüz" if yuzler_basamagi.positive?
  yazi += "#{onlar[onlar_basamagi]}#{birler[birler_basamagi]}"

  yazi
end

print 'Sayı giriniz: '
sayi = gets.chomp.to_i

puts "Yazıyla: #{yaziyla(sayi)}"
