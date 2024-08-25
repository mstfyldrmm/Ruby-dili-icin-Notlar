# frozen_string_literal: true

require 'net/http'

uri = Net::HTTP.get URI('https://api.exchangeratesapi.io/latest?base=TRY') # ama bunu kullanabilir hale çevirmemiz ggereklidir

require 'json' # json metodunu ruby ye yuklemeiz gerekir

json = JSON.parse(uri) # json ile bu stringi hash e çevirip kullanabilir hale getirildi...

birim = json['rates'].keys

değerler = json['rates'].values # Kur değerlerini yazdırır

k = değerler.join(' ').split(' ')

print('Lutfen elinizdeki TL miktarini giriniz :')

a = gets.chomp.to_i

i = 0

birim.each do |x|
  w = a * değerler[i].to_f

  puts("#{x} birimin elinizdeki miktari #{w}")

  i += 1
end
