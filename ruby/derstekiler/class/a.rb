# frozen_string_literal: true

# class Nesnem
#   SABIT = 25
#   def self.x
#     puts "Mustafa Yıldırım"
#   end
#   def y
#     puts "erzurum"
#   end
# end
# Nesnem.x
# puts Nesnem::SABIT

# # class ta module gibi bir şey ama en buyuk farkı nesne(veri tipi) uretebilmeye imkan tanır yani new metodu classta çalısır

# n = Nesnem.new

# n.y

# class TOKI #TOKI adında bir sınıf oluşturduk örneğin array gibi integer gibi

# end

# alsancak_toki = TOKI.new #Class tan bir nesne ürettik

# p alsancak_toki

# p alsancak_toki.class #Sınıfı TOKI dir

# class TOKI
#   def initialize #class nesne üretirken özel bir metoddur ismini hatalı yazarsak çalışmaz
#     puts "İnşa ediliyorum"
#   end

# end

# alsancak_toki = TOKI.new

# p alsancak_toki

# p alsancak_toki.class

# class TOKI
#   def initializ #class nesne üretirken özel bir metoddur ismini hatalı yazarsak çalışmaz
#     puts "İnşa ediliyorum"
#   end

# end

# alsancak_toki = TOKI.new

# p alsancak_toki

# p alsancak_toki.class

# class TOKI
#   def initialize(renk) #initalize metodu class a özel bir metdoddur dışarıda çağırıldığında kullanılamaz
#     puts "#{renk} renkte bina inşa ediliyorum"
#   end

# end

# alsancak_toki = TOKI.new(:mavi)

# p alsancak_toki

# p alsancak_toki.class

# class TOKI
#   def initialize(renk) #initalize metodu class a özel bir metdoddur dışarıda çağırıldığında kullanılamaz
#     @renk = renk
#     puts "#{renk} renkte bina inşa ediliyorum"
#   end
#   def renk
#     @renk
#   end
# end

# alsancak_toki = TOKI.new(:mavi)

# p alsancak_toki

# p alsancak_toki.class

# #daha sonradan inşa edilen binanın rengini öğrenmek

# p alsancak_toki.renk

# class TOKI
#   def initialize(renk)
#     @renk = renk
#     puts "#{@renk} renkte bina inşa ediliyorum"
#   end
#   def renk
#     @renk
#   end
#   def to_s
#     "#{@renk} renkte bina"
#   end
# end

# alsancak_toki = TOKI.new(:mavi)

# p alsancak_toki

# puts alsancak_toki

INSAN = Struct.new :boy, :kilo # sadece niteliklerden oluşan sınıflara struct denir

mustafa = INSAN.new 173, 58

puts mustafa

class Telno
  def initialize(numara)
    @numara = numara
  end

  def to_s
    @numara.to_s
  end

  def ara
    puts "#{@numara} aranıyor"
  end
end

no = Telno.new 798_798_798

no.ara
