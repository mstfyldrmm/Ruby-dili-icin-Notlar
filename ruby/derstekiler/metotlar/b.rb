# frozen_string_literal: true

def bilgiler(**bilgi)
  puts "#{bilgi.keys} isimli #{bilgi.values.upcase} soyadlı müsterilerimiz hosgeldiniz"
end
bilgiler(ahmet: 'yesevi', mustafa: 'yıldırım')
