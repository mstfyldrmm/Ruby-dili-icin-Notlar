def main

  def bilgi(x:0, y:0)
    puts "x eksenine olan uzakligi #{x}, y eksenine olan uzakligi #{y}, orijine olan uzakligi #{Math.sqrt(x**2 + y**2)}"
  end

  toplam = 0

  def topla(input = gets)
    toplam = input.chomp.to_i + toplam
  end


  puts "**********************MENU****************************\n\n\n\n" +
  "1-Konsoldan girilen sayilarin toplamini bulma\n\n" +
  "2-Verilen noktanin koordinatlari hakkinda bilgi veren metod"

  puts "Secim tuslayiniz :"

  secim = gets.chomp.to_i

  if secim == 1

  puts topla

  elsif secim == 2

  bilgi(x:3, y:4)

  else 

    puts "hatali tuslama"

  end





end

main