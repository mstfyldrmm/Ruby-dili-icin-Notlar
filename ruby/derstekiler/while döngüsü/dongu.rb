# frozen_string_literal: true

# a = (0..9).to_a.shuffle

# i = 0

# while i < 10

# puts " Dizinin #{i} indexli elemani :#{a[i]} "

# i += 1

# end

b = Array.new(5) { rand(100) }

en_buyuk = b[0]

i = 0

while i < b.size

  en_buyuk = b [i] if b [i] > en_buyuk

  i += 1

end

print b

puts " En buyuk eleman #{en_buyuk} "

exit # program buraya kadar çalısır alt kısmı çalıstırmaz

puts ' Program bozuktur '
