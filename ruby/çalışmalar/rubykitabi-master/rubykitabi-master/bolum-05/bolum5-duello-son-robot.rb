# frozen_string_literal: true

class Robot
  attr_reader :gunluk

  def initialize(isim, sahip, adim_boyu)
    @isim = isim
    @sahip = sahip
    @adim_boyu = adim_boyu.to_f
    @adim_sayisi = nil
    @gunluk = "- Başlangış noktası.\n"
    @pozisyon = 0
    @yon = nil
  end

  def merhaba_de
    puts "Merhaba! Benim adım #{@isim}. Beni #{@sahip} oluşturdu."
  end

  def don(yon)
    if %i[sag sol].include?(yon)
      @yon = yon
    else
      puts 'Yön değeri sag veya sol olmalı'
    end
  end

  def ilerle(adim_sayisi)
    case @yon
    when :sag
      @pozisyon += adim_sayisi * @adim_boyu
      @gunluk += '- Sağ '
    when :sol
      @pozisyon -= adim_sayisi * @adim_boyu
      @gunluk += '- Sol '
    end
    @gunluk += "yöne #{adim_sayisi} adım.\n" if @yon
  end

  def konum_bildir
    if @pozisyon.positive?
      "Başlangıç noktasından sağa doğru #{@pozisyon} cm uzaktayım."
    elsif @pozisyon.negative?
      "Başlangıç noktasından sola doğru #{@pozisyon.abs} cm uzaktayım."
    else
      'Başladığım yerdeyim!'
    end
  end

  def emret(cumle)
    ifade = /(?<adim>\d+)\s(adım)\s(?<yon>sağa git!|sola git!)/u
    sonuc = cumle.match(ifade)

    if sonuc && sonuc['adim'].to_i.positive?
      case sonuc['yon']
      when 'sağa git!'
        don :sag
        ilerle sonuc['adim'].to_i
        puts 'Emir yerine getirildi'
      when 'sola git!'
        don :sol
        ilerle sonuc['adim'].to_i
        puts 'Emir yerine getirildi!'
      else
        puts 'Emir anlaşılamadı!'
      end
    else
      puts 'Emir anlaşılamadı!'
    end
  end
end

$eylem = 0
$komut_sayisi = 1
$robot_olustu = false

while $eylem != 5 # 5: Çıkış
  puts "\n\n"
  puts '+-------------------------------+'
  puts "|\tRobo Ruby v1.1.0\t|"
  puts '+-------------------------------+'
  if $komut_sayisi <= 1
    puts "|\t  Hoş geldiniz!\t\t|"
    puts "|\t\t\t\t|"
  end
  puts "|     Ne yapmak istersiniz?\t|"
  puts "|\t\t\t\t|"
  puts "|\t1: Robot Oluştur!\t|" unless $robot_olustu # robot oluşturulduktan sonra gösterme
  if $robot_olustu # robot oluşturulmadıysa ek eylemleri gösterme
    puts "|\t2: Robota emir ver!\t|"
    puts "|\t3: Konumunu öğren!\t|"
    puts "|\t4: Günlüğü oku!\t\t|"
  end
  puts "|\t5: Çıkış\t\t|"
  puts "|\t\t\t\t|"
  puts '+-------------------------------+'

  $eylem = gets.strip.chomp.to_i
  if $eylem == 1 # 1: Robot Oluştur
    puts 'Robotun özelliklerini giriniz: Ad, Sahip, Adım Boyu'
    puts 'Örneğin: TürkRoBot, Sıtkı, 12'
    print "Robo Ruby:#{$komut_sayisi}>> "
    robot_girdi = gets.strip.chomp
    robot_ifade = /\b[\wçÇğĞıİöÖşŞüÜ]+[^\s,]\b/u
    sonuc = robot_girdi.encode('utf-8').scan(robot_ifade)
    if sonuc.length >= 3
      robot = Robot.new(sonuc[0], sonuc[1], sonuc[2].to_i)
      puts 'Robot oluşturuldu!'
      $robot_olustu = true
    else
      puts 'Girdiğiniz bilgiler geçerli değil!'
    end
  elsif $eylem == 2 && $robot_olustu # 2: Robota emir ver!
    puts 'Emirlerinizi bekliyorum.'
    print "Robo Ruby:#{$komut_sayisi}>> "
    emir = gets.strip.chomp.encode('utf-8')
    robot.emret(emir)
    robot.konum_bildir
  elsif $eylem == 3 && $robot_olustu
    puts robot.konum_bildir
  elsif $eylem == 4 && $robot_olustu
    puts robot.gunluk
  elsif $eylem == 5
    exit 0
  end
  $komut_sayisi += 1
end
