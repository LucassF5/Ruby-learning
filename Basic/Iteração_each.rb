=begin

EACH - Percorre cada elemento do hash/array, de uma forma parecida com o for, 
    não sobrescrevendo o valor de variáveis fora do laço

MAP - Cria um novo array com os resultados da execução do bloco para cada elemento, 
    baseando-se no array original

SELECT - Cria um novo array com os elementos que retornaram true na execução do bloco

=end


# EACH ARRAY
names = ['Joãozinho', 'Manoel', 'Juca']
name = "Lucas F" # name como variável global

names.each do |name| # name como variável local
    puts name + 'não é meu nome'
end
puts "Não alterou o resultado da variável global name = #{name}"
puts




# EACH HASH
aulas = {'Aula 1' => 'liberada', 'Aula 2' => 'liberada',   #pode-se usar o => ou :
     'Aula 3': 'liberada', 'Aula 4': 'liberada', 'Aula 5': 'em breve'}
# aulas.each do |aula|
#     puts aula
# end
# puts
aulas.each do |key, value|
    puts "#{key} => #{value}"
end