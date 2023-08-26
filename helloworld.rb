puts "Hello World"
# puts 120 * 120
# puts serve para imprimir na tela
print "Digite seu nome: "
name = gets.chomp #Usando o gets.chomp para pegar o input do usuário

print "Digite seu sobrenome: "
sobrenome = gets.chomp

print "Qual sua idade? "
idade = gets.chomp

puts "Olá #{name} #{sobrenome}, com #{idade} anos"
# Colocando #{} dentro de uma string, você pode colocar uma variável dentro dela

#Usando print é impresso na tela e o cursor fica na mesma linha
#Usando puts é impresso na tela e o cursor vai para a próxima linha 

puts "#{sleep 2} #{name} Bom dia!!"
# Usando #{sleep numero_de_segundos} vai dar uma pausa na execução do código na quantidade de segundos estabelecida

for num 1..5
    puts num
end