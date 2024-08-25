# frozen_string_literal: true

class Kitap < Urun
  def initialize(ad, parametreler = {})
    @yazar = parametreler[:yazar]
    super(ad, parametreler[:stok])
  end

  def stok_ogren
    super('kitap')
  end

  def oku
    "#{@yazar || 'Bilinmeyen yazar'}ın, #{@ad} kitabı okunuyor: hımm..."
  end
end
