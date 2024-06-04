# Crie um script em Ruby que leia um número inteiro X e mostre os números pares entre 1 e X.

# puts "Digite um número inteiro: "
# num = gets.chomp.to_i
# puts "\n"
# for numero in 1..num
#   if numero % 2 == 0
#     puts numero
#   end
# end

# ------------------------------------------------------------------

# Faça um script em Ruby que mostre o somatório dos números pares entre 1 e N, onde N é um valor definido pelo usuário.

# puts "Digite um número inteiro: "
# num = gets.chomp.to_i
# puts "\n"
# accumulator = 0
# for numero in 1..num
#   if numero % 2 == 0
#     accumulator += numero
#   end
# end
# puts "O valor da soma de números é #{accumulator}"

# ------------------------------------------------------------------

# Desenvolva um script em Ruby que mostre todos os números entre 1 e 200 que são divisíveis por 3 ou por 5.

# div_by_3_and_5 = []

# for num in 1..200
#   if num % 3 == 0 and num % 5 == 0
#     div_by_3_and_5.append(num)
#   end
# end
# div_by_3_and_5.join(",")
# puts "Números divisíveis por 3 e 5 = #{div_by_3_and_5}"

# ------------------------------------------------------------------

# Desenvolva um script em Ruby que leia n números (o número n deve informado pelo usuário), e diga quantos são pares e quantos são ímpares. Imprima também a soma dos números pares, e a soma dos números ímpares.

# puts "Digite um número inteiro: "
# num = gets.chomp.to_i
# pares = []
# impares = []

# for num in 1..num
#   if num.even?
#     puts "Número #{num} é par"
#     pares.append(num)
#   else
#     puts "Número #{num} é ímpar"
#     impares.append(num)
#   end
# end

# pares.join(",")
# impares.join(",")

# puts "Pares #{pares}"
# puts "ímpares #{impares}"

# ------------------------------------------------------------------

# Desenvolva um script em Ruby que, dados 2 números inteiros X e Y, calcule o valor de X elevado a Y. Faça isso sem usar o operador de potenciação (**).

# puts "1 número"
# x = gets.to_i
# puts "2 número"
# y = gets.to_i
# elevado = x
# vezes = y-1
# contador = 0

# while contador < vezes
#   x*=elevado
#   contador += 1
# end

# puts "Valor de 1 é #{x}"

# ------------------------------------------------------------------

# Faça um script em Ruby que calcule o fatorial de um número inteiro dado pelo usuário. O fatorial de um número é calculado através da multiplicação do próprio número pelos seus antecessores. Exemplo: o fatorial de 4 é 4 x 3 x 2 x 1 = 24.

# puts "Digite um número inteiro: "
# num = gets.chomp.to_i
# fat = 1

# while true
#   if num == 1 or num == 0
#     fat *= 1
#     break
#   else
#     fat *= num
#     num -= 1
#   end
# end

# puts "Fatorial #{fat}"

# ------------------------------------------------------------------
