# frozen_string_literal: true

a = File.read('metin.txt')

b = a.split('')

alfabe1 = ('a'..'z').to_a

alfabe2 = ('A'..'Z').to_a

sifre = ''

print('Lutfen ilerleme miktarini giriniz:')

c = gets.chomp.to_i

b.each do |x|
  if x == ' '

    sifre += ' '

  elsif eski = alfabe1.find_index(x)

    yeni = (eski + c) % 26

    sifre += alfabe1[yeni]
  elsif eski = alfabe2.find_index(x)

    yeni = (eski + c) % 26

    sifre += alfabe2[yeni]

  end
end

File.new('sifreler.txt', 'w')

File.open('sifreler.txt', 'a') do |file|
  file.write(sifre)
end

m = File.read('sifreler.txt')

d = m.split('')

sifre2 = ''

d.each do |z|
  if z == ' '

    sifre2 += ' '

  elsif eski1 = alfabe1.find_index(z)

    yeni1 = (eski1 - c) % 26

    sifre2 += alfabe1[yeni1]
  elsif eski1 = alfabe2.find_index(z)

    yeni1 = (eski1 - c) % 26

    sifre2 += alfabe2[yeni1]
  end
end

File.new('orijinal.txt', 'w')

File.open('orijinal.txt', 'a') do |file|
  file.write(sifre2)
end
