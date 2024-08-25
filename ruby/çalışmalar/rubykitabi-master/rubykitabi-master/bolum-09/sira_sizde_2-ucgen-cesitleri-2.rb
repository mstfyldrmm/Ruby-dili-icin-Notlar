# frozen_string_literal: true

def ucgen_turu(*kenarlar)
  en_uzun = kenarlar.sort.pop
  karsilastirma = en_uzun**2 <=> kenarlar[0]**2 + kenarlar[1]**2
  case karsilastirma
  when 1 then 'Geniş açılı üçgen'
  when 0 then 'Dik üçgen'
  else
    'Dar açılı üçgen'
  end
end

puts ucgen_turu(3, 3, 3)
puts ucgen_turu(3, 4, 5)
puts ucgen_turu(2, 2, 5)
