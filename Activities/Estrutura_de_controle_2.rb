# Crie um script em Ruby que permita que o usuário digite vários números e imprima o triplo de cada número digitado. O script deve acabar quanto o número -999 for digitado.

# while true
#   puts "\nDigite um número e te darei o triplo dele"
#   numero = gets.to_i
#   if numero == -999
#     break
#   end
#   puts "O triplo dele é #{3*numero}"
# end

# --------------------------------------------------------------------------------

# Crie um script em Ruby que permita que o usuário digite vários números positivos. Quando um número negativo for digitado, o script deve apresentar quantos números positivos foram digitados.

# positivos = 0
# while true
#   puts "\nDigite um número que não seja negativo"
#   numero = gets.to_i
#   if numero < 0
#     puts "Quantidade de números positivos até agora é #{positivos}"
#     break
#   end
#   positivos += 1
# end

# positivos = []
# while true
#   puts "\nDigite um número que não seja negativo"
#   numero = gets.to_i
#   if numero < 0
#     break
#   end
#   positivos.append(numero)
# end
# reduce = positivos.reduce{ |acc, element| acc+element}
# puts "A soma de números positivos até agora é #{reduce}"


# --------------------------------------------------------------------------------

# Crie um script em Ruby que permita ao usuário digitar vários números positivos. Quando um número negativo for digitado, o script deve imprimir a média dos números positivos digitados.

# positivos = 0
# quantidade = 0
# while true
#   puts "\nDigite um número que não seja negativo"
#   numero = gets.to_i
#   if numero < 0
#     puts "A média de números positivos até agora é #{positivos/quantidade}"
#     break
#   end
#   positivos += numero
#   quantidade += 1
# end

# --------------------------------------------------------------------------------

# Crie um script em Ruby que permita que o usuário digite o sexo de várias pessoas ("m" para masculino ou "f" para feminino). Quando o usuário teclar ENTER sem digitar nada, o script deve informar quantas vezes foi digitado "m".

# masc = 0
# fem = 0
# while true
#   puts "\nDigite m ou n"
#   palavra = gets.to_s
#   puts palavra
#   if palavra == "\n"
#     puts "A quantidade de m's é #{masc}"
#     puts "A quantidade de f's é #{fem}"
#     break
#   elsif palavra == "m\n"
#     masc += 1
#   elsif palavra == "f\n"
#     fem += 1
#   end
# end

# --------------------------------------------------------------------------------

# Crie um script em Ruby que permita ao usuário digitar vários números. O script acaba quando se digita -9999. Por fim, o script deve apresentar o maior número digitado pelo usuário.

# numeros = []
# while true
#   puts "\nDigite um número"
#   numero = gets.to_i
#   if numero == -9999
#     puts "O maior número digitado foi #{numeros.max}"
#     break
#   end
#   numeros.append(numero)
# end

# --------------------------------------------------------------------------------

# Na Usina de Angra dos Reis, os técnicos analisam a perda de massa de um material radioativo. Sabendo-se que esse material perde 25% de sua massa a cada 30 segundos, criar um script em Ruby que leia um valor real que representa o peso do material e mostre o tempo necessário para que a massa desse material se torne menor que 10 gramas.

# puts "Digite o peso do material"
# peso = gets.to_f
# tempo = 0
# while peso > 0.10
#   peso = peso * 0.75
#   tempo += 30
# end
# puts "O tempo necessário para que a massa desse material se torne menor que 10 gramas é de #{tempo} segundos"
