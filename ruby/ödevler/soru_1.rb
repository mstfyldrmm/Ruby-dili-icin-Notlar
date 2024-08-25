# frozen_string_literal: true

print 'Lutfen 1-99 arasında kurus miktari giriniz : '

kurus = gets.to_i

print 'Girmis oldugunuz kurus miktari :  '

print kurus

print " \n \n "

print "Girmis oldugunuz kurus miktari su sekildede gosterilebilir \n "

a = kurus / 50

b = (kurus % 50) / 10

c = (kurus % 10) / 5

d = (kurus % 5) / 1

print '50 kurus adeti :'

print a

print "\n"

print '10 kurus adeti :'

print b

print " \n "

print ' 5  kurus adeti : '

print c

print " \n "

print ' 1 kurus adeti  : '

print d
