# encoding:utf-8
# frozen_string_literal: true

diller = ['HTML', 'CSS', 'JavaScript', 'Ruby', 'Ruby on Rails', 'Sinatra']
toplam_yeterlilik = 0
sayi = 0

while sayi < diller.length

  print "#{diller[sayi]} dilini kullanabiliyor musunuz?(E/H): "
  toplam_yeterlilik += 1 if gets.chomp.upcase == 'E'

  sayi += 1
end

if toplam_yeterlilik > 3
  puts 'Tebrikler! Mülakata katılmaya hak kazandınız.'
else
  puts 'Biz, sizi ararız(emin olun)!'
end
