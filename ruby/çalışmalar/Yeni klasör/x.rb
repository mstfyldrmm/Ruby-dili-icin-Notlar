# frozen_string_literal: true

require 'net/http'

print('Lutfen hangi para birimi ile işlem yapıcagınızı yazın:')

h = gets.chomp

uri = Net::HTTP.get URI("https://api.exchangeratesapi.io/latest?base=#{h}")

require 'json'

json = JSON.parse(uri)

birim = json['rates'].keys

degerler = json['rates'].values

print("Lutfen elinizdeki #{h} miktarini giriniz :")

a = gets.chomp.to_i

i = 0

birim.each do |x|
  w = a * degerler[i].to_f

  puts("#{x} birimin elinizdeki miktari #{w}")

  i += 1
end
