# frozen_string_literal: true

menu = { iskender: 15, adana: 10, icecek: 2 }
siparis = { iskender: 2, adana: 3, icecek: 5 }

tutar = 0

siparis.each do |gida, adet|
  tutar += menu[gida] * adet
end

puts "Sipariş Tutarı: #{tutar} TL"
