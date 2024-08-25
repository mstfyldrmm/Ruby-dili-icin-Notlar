# frozen_string_literal: true

print('Lutfen metini sifrelemek icin 1 eski haline cevirmek icin 2 yi tuslayiniz:')

x = gets.chomp.to_i

case x
when 1

  def okuma(dosya)
    File.read(dosya)
  end

  a = okuma('metin.txt')

  def parcala(x)
    x.split('')
  end

  b = parcala(a)

  def sifreleme(metin, c = 0, sifre)
    alfabe1 = ('a'..'z').to_a

    alfabe2 = ('A'..'Z').to_a

    sifre = ''

    metin.each do |x|
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
  end
  bos = ''
  print('ilerleme miktarini giriniz:')

  w = gets.chomp.to_i

  sifreleme(b, w, bos)

  puts('Sifreleme sifre.txt yazdirildi')

when 2

  def okuma(dosya)
    File.read(dosya)
  end
  c = okuma('sifreler.txt')

  def parcala(x)
    x.split('')
  end

  d = parcala(c)

  def eski_hal(metin, e = 0, sifre2)
    alfabe1 = ('a'..'z').to_a

    alfabe2 = ('A'..'Z').to_a

    sifre2 = ''

    metin.each do |z|
      if z == ' '

        sifre2 += ' '

      elsif eski1 = alfabe1.find_index(z)

        yeni1 = (eski1 - e) % 26

        sifre2 += alfabe1[yeni1]

      elsif eski1 = alfabe2.find_index(z)

        yeni1 = (eski1 - e) % 26

        sifre2 += alfabe2[yeni1]

      end
    end

    File.new('orijinal.txt', 'w')

    File.open('orijinal.txt', 'a') do |file|
      file.write(sifre2)
    end
  end

  dolu = ''

  print('ilerleme miktarini giriniz:')

  i = gets.chomp.to_i

  eski_hal(d, i, dolu)

  puts('Sifreleme eski haline orijinal.txt yazdirildi')
end
