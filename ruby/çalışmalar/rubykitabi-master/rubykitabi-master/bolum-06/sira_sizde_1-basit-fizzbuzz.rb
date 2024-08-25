# frozen_string_literal: true

sayi = 1
while sayi < 101
  if (sayi % 15).zero?
    puts 'FizzBuzz'
  elsif (sayi % 3).zero?
    puts 'Fizz'
  elsif (sayi % 5).zero?
    puts 'Buzz'
  else
    puts sayi
  end
  sayi += 1
end
