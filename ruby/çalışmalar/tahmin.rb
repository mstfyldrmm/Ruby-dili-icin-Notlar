# frozen_string_literal: true

deneme = 0

max_hata = 3

sayi = rand(100)

puts sayi

loop do
  if deneme < max_hata

    print 'Bir sayi giriniz:'

    a = gets.chomp.to_i

    if a == sayi

      puts 'Bravo bildiniz.'

      deneme += 1

      break

    elsif a < sayi

      puts 'Sayiniz kucuk arttirin'

      deneme += 1

    elsif a > sayi

      puts 'Sayiniz buyuk azaltin'

      deneme += 1

    end

  else

    puts 'Maalesef max hata miktarina ulastiniz.Puaniniz 0 '

    exit

    break

  end
end

case deneme
when 1

  puts 'Puaniniz 100'

when 2

  puts 'Puaniniz 75'

when 3

  puts 'Puaniniz 50'

end
