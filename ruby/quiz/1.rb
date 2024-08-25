# frozen_string_literal: true

puts('İlk aralığı giriniz:')
sayi_1 = gets.chomp.to_i
puts('İkinci aralığı giriniz:')
sayi_2 = gets.chomp.to_i

abc = sayi_1
karamel_sayılar = []

loop do # Sonsuz Döngü -  bu döngü farklı şekillerde de yazılabilir farklı şeyler deneyin mutlaka
  break if abc > sayi_2

  # Sayıları basamaklarına ayırma - bu işlemde farklı şekillerde yapılabilir bu bir tanesi
  a = (abc / 100).to_i
  b = ((abc % 100) / 10).to_i
  c = ((abc % 100) % 10).to_i

  if a.zero? || b.zero? || c.zero?
    abc += 1
    next
  end

  karamel_sayılar << abc if (abc % a).zero? && (abc % b).zero? && (abc % c).zero?

  abc += 1
end

puts('**************Karamel Sayılar***************')
puts(karamel_sayılar)
