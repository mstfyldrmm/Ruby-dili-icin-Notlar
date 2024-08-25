# frozen_string_literal: true

class Cd < Urun
  def initialize(ad, parametreler = {})
    @sanatci = parametreler[:sanatci]
    super(ad, parametreler[:stok])
  end

  def stok_ogren
    super('CD')
  end

  def dinle
    "#{@sanatci || 'Bilinmeyen sanatçı'}'dan, #{@ad} cd'si çalınıyor: tiri lay lay..."
  end
end
