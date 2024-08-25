# frozen_string_literal: true

# x = 2

# def fun(x:, y:, z:)
#   puts x
# end
# #def sışarıda tanımlanan herhangi bir ddeğişkeni kendi içinde kabul etmez
# fun(x:25, y:45, z:0)

# Dışarıda tanımlanan değişkenleri kullanma

# $a = 25 #a değşikeni artık global scope oldu yerel kapsam

# def fun(x:, y:, z:)
#   puts $a
#   p x, y, z
# end

# fun(x:1, y:2, z:3)

# $a = 25

# def fun(x:, y:, z:)
#   $a = 17 #çok az kullanılır
#   puts $a
#   p x, y, z
# end

# fun(x:1, y:2, z:3)

# puts $a

# module Mathematik #modul bir tür isim uzayı olarak davranıyor --> aynı zamanda namespace denir
#   PI = 3.14
# end

# puts Mathematik::PI #modul içindeki sabit değişkene ulaşma bu şekilde olur

# module Mathematic
#   x = 5
# end
# puts Mathematic::x #x adında bir method bulunamadı hatası verir cunku modulde değişkenler buyuk harfle olmalıdır
# puts Mathematic.x

# module Mathematic
#   PI = 3.14
#   def Mathematic.x
#     puts PI
#   end
# end
# puts Mathematic.x

# #surekli module ismini kullanmak yerine SELF kullanımı SELF çok cok onemli cok onemli
# module Mat
#   PI = 3.14
#   def self.x
#     puts PI
#   end
# end
# Mat.x

# module Mat
#   PI = 3.14
#   def self.sin(angle)
#     angle / 2
#   end
# end
# puts Mat.sin(30) #Çıktı 15 olur
# puts Math.sin(30) #normal rubydeki matematik modulune gore sin metodu

# module Mat
#   PI = 3.14
#   def x
#     13
#   end
#   def self.sin(angle) #x adında bir metod bulunamadı hatası verir
#     puts x
#     angle / 2
#   end
# end
# Mat.sin(40)

# module Mat
#   PI = 3.14
#   def self.x
#     13
#   end
#   def self.sin(angle) #x adında bir metod bulunamadı hatası artık vermez
#     puts x
#     puts angle / 2
#   end
# end
# Mat.sin(40)
# def fun
#   puts "Merhaba dunya"
# end
# fun #metodu çağırdığımızda sadece kodları çalıştırır

# module Mat #ama module de kodlar çalışır haldedir
#   PI = 3.14
#   def self.x
#     13
#   end
#   def self.sin(angle)
#     puts x
#     puts angle / 2
#   end
#   puts "kodlar çalışıyor"
# end
# Mat.sin(40)

# module Mat
#   PI = 3.14
#   def self.x
#     13
#   end
#   def self.sin(angle)
#     puts x
#     puts angle / 2
#   end
#   puts PI #Bunu ruby ait olduğu kod bloğunda yani mat isim uzayında aradığı için ayrıca modulun ismini belirtmeme gerek yok
# end
# Mat.sin(40)
# #ama dışarıda modul içindeki değişkeni istersek mutlaka modulu belirtmemiz gerekir
# puts Mat::PI

# module Mat
#   PI = 3.14
#   def x
#     13
#     puts PI #bu bolum bos cıktı verir cunku metod MAT modulune gore tanımlanmadı
#   end
#   def self.sin(angle)
#     puts angle / 2
#   end

# end
# Mat.sin(40)

# A = 25 #Bu bir sabit değiştirilemez ve global değişkendir

# def fun(a,b) #fun metoduda bir module bağlı(main modulu)
#   puts a,b
#   puts A #Sabit değişkenler global değişkenler oldukları için metod bulunamadı hatası vermez
# end
# fun(1,2)

# module Mat
#   PI = 3.14
#   #ruby de modulde module ait fonksiyon tanımlarken modul ismi kullanarak yapılırdı ama ruby bize şöyle bir imkan sunar

#   module_function #artık burada MAT modulune ait fonksiyonlar bulunur
#   def x
#     13
#   end
#   def sin(angle)
#     puts x
#     puts angle / 2
#   end
# end
# Mat.sin(40)

# Önemli ---> esasında ruby herşey bir module içinde örneğin bu  açıklama main modulu içinde

module Mat
  PI = 3.14
  # ruby de modulde module ait fonksiyon tanımlarken modul ismi kullanarak yapılırdı ama ruby bize şöyle bir imkan sunar

  module_function # artık burada MAT modulune ait fonksiyonlar bulunur

  def x
    13
  end

  def sin(angle)
    puts angle / 2
  end
end
Mat.sin(40)
