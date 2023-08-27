# FOR
puts 'FOR'
fruits = ["Maçã", "Banana", "Morango"]

for item in fruits
    puts item
end

puts
puts '---------------'

# WHILE
puts 'WHILE'

num = 0

while num < 10
    print "#{num} "
    num+=1
end

puts
puts '---------------'

# DO-WHILE -- CHAMA-SE LOOP NO RUBY
puts 'LOOP'
count = 1

loop do 
    print "#{count} "

    break if count >= 10

    count+=1
end

puts
puts '---------------'

# TIMES
puts 'TIMES'
# Usado para fazer determinada quantidade de repetições

rep = 1
10.times do
    unless rep == 1
        puts "Repetindo #{rep} vezes"
    else 
        puts "Repetindo #{rep} vez"
    end
    rep+=1
end
