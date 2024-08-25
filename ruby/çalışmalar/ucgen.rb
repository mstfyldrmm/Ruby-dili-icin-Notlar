# frozen_string_literal: true

print 'ucgenin taban uzunlugunu giriniz:'

taban = gets.chomp.to_i

i = 0

while i <= taban

  k = taban

  while k >= i

    print ' '

    k -= 1

  end

  j = 1

  while j <= 2 * i + 1

    print '*'

    j += 1

  end

  print "\n"

  i += 1

end

# i = taban

# while i > 0

#   j = 0

#   while j<=i

#     print"*"

#     j += 1

#   end

#   print"\n"

#   i -= 1

#   end
