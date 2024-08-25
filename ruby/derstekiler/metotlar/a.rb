# frozen_string_literal: true

# def function(a, b)
#   puts "a: #{a}"
#   puts "b: #{b}"
# end

# function(4, 6)

# def noktalar(*a) # Birden fazla değer alabileceğini gösterir yani değişken sayıda argüman alabilir ve bu değerler bir dizi oluşturur
#   puts a
#   puts a[0]
# end

# noktalar(25, 41, 25) #Çıktı---> 25 41 25 ve a dizisinin 0 indexli elemani 25

# noktalar()

# def nokta(a, *b)
#   puts a
#   puts b
#   puts b.class, b.size
# end

# nokta(1, 2, 3, 4)
# nokta(25, 41, 34)

# Onemli--> argumanlara verilen adlar mantıklı olması gerekir
# Argüman sayısıda 3 gecmemelidir

# onemli bir nokta argumanları değer verirken sıra onemliydi ama ruby farkli bir imkan sağlar

# def point(:x ,:y , :z)
#   puts x, y, z
# end

# point(y:5, z:7, x:3)
# point(2, 3, 4) #--> Hata verir çünkü argümanları isimlendirdik ve ruby bize x,y,z gibi yapmamız konusunda uyarır
# point(x:3, y:5)#-->Hata verir (missing keyword) çünkü z değişkenini yazmadık ve burda doğrudan neyin eksik olduğunu ruby bize söyler

# def point(x:0 ,y: ,z:) #X için değer girilmediği zaman 0 atar
#   puts x, y, z
# end
# point(y:25, z:01) # çıktı---> 0 25 1 dir

# #İsimlendirilmeden atanan argümanlarda değer girilmediği zaman belirli bir değer atanması için

# def nokta(a, b = 25) # b argümanına değer girilmediğinde 25 atar  yani b nin default(ön tanımlı) değeri 25 dir
#   puts a, b
# end
# nokta(1) #Çıktı ---> 1 25
# #arguman sayısı arttıkca isimlendirilmiş argumanlar tercih edilmelidir

# #değişken sayıdaki argumanların isimlendirilmiş argumanlardaki hali

# def konum(**a)
#   p a, a[:boylam]
#   puts a.class # Hash veri tipindedir
# end

# konum(enlem: 34, boylam: 25) #çıktı {:enlem=>34, :boylam=>25} veri tipi hash olur

# def konum(x, **a)
#   p a[:boylam]
#   p x
# end
# konum(enlem: 1, boylam: 0) #burda x isimlendirilmemiş arguman olduğu için enlem ve boylam adında hash olusturur ama  a[:boylam] için nill döner
# konum(2, enlem: 41, boylam: 25) #burda x isimlendirilmemiş arguman ve 2 yi x atar **a ise isimlendirilmiş arguman için birden fazla değer oldugunu gösterir ve enlem ve boylam adında key-value değer çifti oluşturur

# def konum(*b, **a)
#   puts a
#   puts b
# end

# konum(25, 41,enlem: 25) #çıktı su sekildedir {:enlem=>25}  -  25 41

# NOT: * işareti ile tanımlanan argüman ** işareti ile tanımlanan argümandan kesinlikle ön sırada tanımlanmalıdır!

# def konum(*b, **a)
#   puts a
#   puts b
# end

# konum(25, 41,enlem: 25) do |verilen| #aslında def ile tanımlarken bir block yapısı vardır
#   puts verilen
# end

# bu block yapısı su sekilde kullanılır

# def konum(*b, **a, &eylem)
#   puts a
#   puts b
#   eylem.call 99
# end

# konum(25, 41,enlem: 25) do |verilen|
#   puts verilen
# end

# def konum(*b, **a, &eylem)
#    puts a
#    puts b
#    eylem.call(571, 1453, 99, 40)
# end

# konum(25, 41,enlem: 25) do |*verilen, istenen| #Burda değerleri verilen adında dizide topladı
#    puts verilen[2]
#    puts istenen
#  end

def konum(*b, **a, &eylem)
  puts a
  puts b
  eylem.call(571, istanbul: 1453, isim: 99, yas: 40)
end

konum(25, 41, enlem: 25) do |*verilen, **istenen| # Burda değerleri verilen adında dizide topladı
  puts verilen[2]
  puts istenen[:yas]
end
