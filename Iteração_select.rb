=begin

EACH - Percorre cada elemento do hash/array, de uma forma parecida com o for, 
    não sobrescrevendo o valor de variáveis fora do laço

MAP - Cria um novo array com os resultados da execução do bloco para cada elemento, 
    baseando-se no array original

SELECT - Cria um novo array com os elementos que retornaram true na execução do bloco

=end

# SELECT ajuda a fazer pesquisas dentro de um array/hash

# SELECT ARRAY - Cria um novo array com os elementos que retornaram true na execução do bloco
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

selection = array.select do |select_a|
    select_a >= 5
end
# Selection vai receber os valores que passarem na condição
puts selection


# SELECT HASH - Cria um novo hash com os elementos que retornaram true na execução do bloco
hash = {0 => 'zero', 1 => 'um', 2 => "dois", 3 => "três"}
puts "\nSelecionando valores de chave maiores do que 1"
selection_key = hash.select do |key, value|
    key > 1
end

puts "#{selection_key}"