# frozen_string_literal: true

a = File.read('metin.txt')

cumle = a.downcase.split

hash = {}

cumle.each_with_index do |sozluk, i|
  hash[sozluk] = i + 1
end

sozluk = {}

i = 1

hash.each_key do |anahtar|
  if sozluk.key? anahtar
  else
    sozluk[anahtar] = i
    i += 1
  end
end

sozluk['OOV'] = 48

puts "A secenegi #{sozluk}"

# c sikki

b = File.readlines('metin.txt')

c = b.map(&:chomp)

c.each do |eleman|
  x = eleman.downcase.split
  d = []
  x.each do |kelime|
    d << sozluk[kelime] if sozluk.key? kelime
  end
  puts "#{eleman}--->#{d}"
end

# d sikki

print('Lutfen vektorlestimek istediginiz cumleyi giriniz:')

e = gets.chomp

d = e.downcase.split

z = []

d.each do |numara|
  z << if sozluk.key? numara
         sozluk[numara]
       else
         sozluk['OOV']
       end
end
print z
