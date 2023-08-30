=begin

EACH - Percorre cada elemento do hash/array, de uma forma parecida com o for, 
    não sobrescrevendo o valor de variáveis fora do laço

MAP - Cria um novo array com os resultados da execução do bloco para cada elemento, 
    baseando-se no array original

SELECT - Cria um novo array com os elementos que retornaram true na execução do bloco

=end

array = [1, 2, 3, 4, 5]

puts "\nExecutando .map multiplicando cada item por 2"

new_array = array.map do |map_a|
    map_a * 2
end

puts "\nArray Original\n #{array}"

puts "\nNovo Array\n #{new_array}"

new_array = array.map! do |map_a| # .map! sobrescreve o valor do array original
    map_a * 10
end

puts "\n'Novo array' com os valores multiplicados por 10"