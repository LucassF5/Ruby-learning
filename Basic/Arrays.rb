# Arrays

# Arrays are ordered, integer-indexed collections of any object.
# Array indexing starts at 0, as in C or Java.
# A negative index is assumed to be relative to the end of the array—that is, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.

# Arrays can hold anything, including other arrays.
# Arrays are very flexible and have many uses, such as storing lists of items, queues, and stacks.

array = [1, 2, 3, 4, 5]
# puts array

array.append(6)
# puts array

array.push(7)
# puts array

array << 8
# puts array

# array.pop
# puts array

# array.shift
# puts array

array.unshift(1) # Adiciona um elemento no início do array
# puts array

array.delete(2) # Deleta o elemento 2
# puts array

array.delete_if { |i| i < 4 } # Deleta os elementos menores que 4
puts array

array.each { |i| puts i } # Itera sobre o array

array.each_with_index { |i, index| puts "#{index}: #{i}" } # Itera sobre o array com índices

array.map { |i| i * 2 } # Multiplica cada elemento por 2

array.select { |i| i > 4 } # Seleciona os elementos maiores que 4

array.reject { |i| i < 4 } # Rejeita os elementos menores que 4

array.sort # Ordena o array

array.sort.reverse # Ordena o array de forma reversa

array.sort_by { |i| i } # Ordena o array

array.sort_by { |i| i }.reverse # Ordena o array de forma reversa

array.sort_by { |i| i }.reverse.join(' ') # Ordena o array de forma reversa e junta os elementos com um espaço

array.include?(1) # Verifica se o array inclui o elemento 1

array.empty? # Verifica se o array está vazio

array.size # Retorna o tamanho do array

array.count # Retorna a quantidade de elementos no array

array.first # Retorna o primeiro elemento do array

array.last # Retorna o último elemento do array

array[0] # Retorna o primeiro elemento do array

array[-1] # Retorna o último elemento do array