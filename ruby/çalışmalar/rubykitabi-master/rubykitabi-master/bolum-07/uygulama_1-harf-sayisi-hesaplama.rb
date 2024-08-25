# frozen_string_literal: true

def kelime_uzunlugu(metin)
  kelimeler  = metin.split
  uzunluklar = []

  kelimeler.each do |kelime|
    uzunluklar.push(kelime.length)
  end

  uzunluklar
end

p kelime_uzunlugu('Zamanın değerini, yapacak işi olan bilir')
