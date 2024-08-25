# frozen_string_literal: true

# a.rb dosyasındaki module erişme

# 1-
# Mat.sin(30) # MAT adında bir modul olmadığını soyler İŞTE DEVREYE REQUİRE GİRER

# #2-
# require 'a.rb' #dosya yuklenemedi hatası verir

# 3-Bu hatanın çözümü
# require './a.rb' #burda bulunduğum dizinden a.rb deki modulleri (mat modulunu) yukler

# puts Mat.sin(30)

# 4- require kodu daha duzenli olması gerekir

# require_relative './mat' #bulunduğum dizinden bunu arar '../a' bir üst dizinde arar
# puts Mat.sin(30)

# 5-

# işin dogru kısmı yuklemek istediğimiz modul ismine gore dosya adı olmalı

require_relative 'mat'

puts Mat.sin(30)
