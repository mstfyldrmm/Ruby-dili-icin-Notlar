# frozen_string_literal: true
def main

  #ruby de diziler

  #diziye sondan eleman eklemek dizi.push  ya da dizi <<

  #eger metodun son bolumu bir ifade belirtiyorsa metodun donus degeri o ifadedir !!! orn

  def topla(x, y)
    x + y

    25
  end
  
  puts  topla(41, 34) #25 bir deger belirttigi icin metodun donus degeri 25 tir.

  #argumanlarda *a degeri metodun birden fazla arguman aldigini gosterir. Bu argumanlar dizi olusturur

  #arguman sayisida 3 adetten fazla olmamalidir. ornegin--> def topla(x, y, z, ...) olmamalidir

  def sayilar(*a)

    puts a[0]

  end

  #argumanlara deger verilirken sira onemliydi ama ruby farkli bir imkan tanir

  def hipotenus(x:, y:) # bu sekilde yapildiginda deger metod cagirilirken nokta(y : 3, z : 5, x : 4) gibi belirtilmelidir
    Math.sqrt(x*x + y*y)
  end

  puts hipotenus(y:3, x:4)

  #Ruby de, argumanlara deger atanmamasi gibi durumlar soz konusu oldugunda argumanlara default degeri verebilme imkani tanir

  def cikti(x:0, y:, z:) #x e deger atanmadigi zaman default olarak 0 alinir
    puts "x : #{x}, y : #{y}, z : #{z} "
  end

  cikti(y:25, z:41)

  #Eger kullanilan argumanlar isimlendirilmemis ise default degeri su sekilde atanir

  def kuvvet(x = 1, y) #x e deger verilmedigi zaman default olarak 2 degerini alir
    x**y
  end

  puts "x deger verilmedi sonuc #{kuvvet(4)}"

  puts "x deger verildi sonuc #{kuvvet(2, 5)}"

  #Degisken sayidaki argumanlarin isimlerindirilmis hali su sekildedir
  #Isimlendirilmemis argumanlarda dizi olarak tutulurken isimlendirildiginde hash veri tipinde saklanir

  def toplam(**a) 
    puts a              #a burada hash veri tipindedir
  end

  toplam(x:2, y:5, z:4)

end

main
