# frozen_string_literal: true

kelimeler = File.readlines('kelimeler.txt')

dizi = []

kelimeler.each do |eleman|
  a = eleman.chomp
  b = a.split ':'
  dizi << b
end

kelimeler = {}

dizi.each do |kelime|
  if kelimeler.key? kelime[0]
  else
    kelimeler[(kelime[0]).to_s] = (kelime[1]).to_s
  end

  soru_1 = kelimeler.keys[rand(179)]

  dogru = 0

  yanlis = []

  siklar = kelimeler.values

  soru1 = []

  i = 0

  while i < 3
    soru1 << siklar[rand(siklar.size)]
    i += 1
  end

  soru1 << kelimeler[soru_1]

  soru1.shuffle!

  puts "Soru-1 #{soru_1} kelimesinin turkce anlami asagidakilerden hangisidir?"

  puts "A-#{soru1[0]}"

  puts "B-#{soru1[1]}"

  puts "C-#{soru1[2]}"

  puts "D-#{soru1[3]}"

  print 'Cevap:'

  cevap_1 = gets.chomp.to_i

  case cevap_1
  when 'A'
    if kelimeler[soru_1.to_s] == soru1[0]
      dogru += 1
    else
      yanlis << 1
    end
  when 'B'
    if kelimeler[soru_1.to_s] == soru1[1]
      dogru += 1
    else
      yanlis << 1
    end
  when 'C'
    if kelimeler[soru_1.to_s] == soru1[2]
      dogru += 1
    else
      yanlis << 1
    end
  when 'D'
    if kelimeler[soru_1.to_s] == soru1[3]
      dogru += 1
    else
      yanlis << 1
    end
  end

  soru_2 = kelimeler.keys[rand(179)]

  soru2 = []

  i = 0

  while i < 3
    soru2 << siklar[rand(siklar.size)]
    i += 1
  end

  soru2 << kelimeler[soru_2.to_s]

  soru2.shuffle!

  puts "Soru-2 #{soru_2} kelimesinin turkce anlami asagidakilerden hangisidir?"

  puts "A-#{soru2[0]}"

  puts "B-#{soru2[1]}"

  puts "C-#{soru2[2]}"

  puts "D-#{soru2[3]}"

  print 'Cevap:'

  cevap_2 = gets.chomp.upcase

  case cevap_2
  when 'A'
    if kelimeler[soru_2.to_s] == soru2[0]
      dogru += 1
    else
      yanlis << 2
    end
  when 'B'
    if kelimeler[soru_2.to_s] == soru2[1]
      dogru += 1
    else
      yanlis << 2
    end
  when 'C'
    if kelimeler[soru_2.to_s] == soru2[2]
      dogru += 1
    else
      yanlis << 2
    end
  when 'D'
    if kelimeler[soru_2.to_s] == soru2[3]
      dogru += 1
    else
      yanlis << 2
    end
  end

  soru_3 = kelimeler.keys[rand(179)]

  soru3 = []

  i = 0

  while i < 3
    soru3 << siklar[rand(siklar.size)]
    i += 1
  end

  soru3 << kelimeler[soru_3]

  soru3.shuffle!

  puts "Soru-3 #{soru_3} kelimesinin turkce anlami asagidakilerden hangisidir?"

  puts "A-#{soru3[0]}"

  puts "B-#{soru3[1]}"

  puts "C-#{soru3[2]}"

  puts "D-#{soru3[3]}"

  print 'Cevap:'

  cevap_3 = gets.chomp.upcase

  case cevap_3
  when 'A'
    if kelimeler[soru_3.to_s] == soru3[0]
      dogru += 1
    else
      yanlis << 3
    end
  when 'B'
    if kelimeler[soru_3.to_s] == soru3[1]
      dogru += 1
    else
      yanlis << 3
    end
  when 'C'
    if kelimeler[soru_3.to_s] == soru3[2]
      dogru += 1
    else
      yanlis << 3
    end
  when 'D'
    if kelimeler[soru_3.to_s] == soru3[3]
      dogru += 1
    else
      yanlis << 3
    end
  end

  soru_4 = kelimeler.keys[rand(179)]

  soru4 = []

  i = 0

  while i < 3
    soru4 << siklar[rand(siklar.size)]
    i += 1
  end

  soru4 << kelimeler[soru_4]

  soru4.shuffle!

  puts "Soru-1 #{soru_4} kelimesinin turkce anlami asagidakilerden hangisidir?"

  puts "A-#{soru4[0]}"

  puts "B-#{soru4[1]}"

  puts "C-#{soru4[2]}"

  puts "D-#{soru4[3]}"

  print 'Cevap:'

  cevap_4 = gets.chomp.upcase

  case cevap_4
  when 'A'
    if kelimeler[soru_4.to_s] == soru4[0]
      dogru += 1
    else
      yanlis << 4
    end
  when 'B'
    if kelimeler[soru_4.to_s] == soru4[1]
      dogru += 1
    else
      yanlis << 4
    end
  when 'C'
    if kelimeler[soru_4.to_s] == soru4[2]
      dogru += 1
    else
      yanlis << 4
    end
  when 'D'
    if kelimeler[soru_4.to_s] == soru4[3]
      dogru += 1
    else
      yanlis << 4
    end
  end

  puts "Sonuc:Test sonucundan #{dogru * 25} puan aldiniz"

  puts "Yanlis yapilan sorular #{yanlis}"

  yanlis.each do |cevap|
    case cevap
    when 1
      puts "#{cevap}.sorunun cevabi  #{kelimeler[soru_1]}"
    when 2
      puts "#{cevap}.sorunun cevabi  #{kelimeler[soru_2]}"
    when 3
      puts "#{cevap}.sorunun cevabi  #{kelimeler[soru_3]}"
    when 4
      puts "#{cevap}.sorunun cevabi  #{kelimeler[soru_4]}"
    end
  end
end
