# frozen_string_literal: true

print 'x degerini giriniz: '

x = gets.chomp.to_i

print 'n degerini giriniz: '

n = gets.chomp.to_i

t = 1

s = 0

# istenirse while, times... kullanilabilirdi
# dongu icerisinde if else kullanilmadan 10. satira doğrudan t = t + ((-x) ** e).to_f / e yazilabilirdi. tek kuvvetler negatif cift kuvvetler pozitif geleceği icin
# cok sayida cozum mevcut

(1..n).each do |e|
  s = (x**e).to_f / e

  t = if e.even?

        t + s

      else

        t - s

      end
end

puts "serinin sonucu = #{t}"
