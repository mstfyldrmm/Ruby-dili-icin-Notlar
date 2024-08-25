# frozen_string_literal: true

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
