puts "Hello World"
# puts 120 * 120
# puts serve para imprimir na tela
print "Digite seu nome: "
name = gets.chomp #Usando o gets.chomp para pegar o input do usuário

print "Digite seu sobrenome: "
sobrenome = gets.chomp

puts "Olá #{name} #{sobrenome}"
# Colocando #{} dentro de uma string, você pode colocar uma variável dentro dela

#Usando print é impresso na tela e o cursor fica na mesma linha
#Usando puts é impresso na tela e o cursor vai para a próxima linha