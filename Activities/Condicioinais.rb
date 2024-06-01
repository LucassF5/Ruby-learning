# Crie um script em Ruby que leia três valores, 'a', 'b' e 'c' e diga se estes valores podem ser os lados de um triângulo. Para um triângulo ser formado, a soma de dois lados deve ser maior do que o terceiro lado: a + b > c e a + c > b e b + c > a.

# puts "1 LADO"
# lado_a = gets.to_i
# puts "2 LADO"
# lado_b = gets.to_i
# puts "3 LADO"
# lado_c = gets.to_i

# triangulo = false

# puts "Lado A: #{lado_a}, Lado B: #{lado_b}, Lado C: #{lado_c}"

# if (lado_a + lado_b > lado_c) and (lado_b + lado_c > lado_a) and (lado_c + lado_a > lado_b)
#   puts "Os lados formam um triângulo"
#   triangulo = true
# else
#   puts "Os lados não formam um triângulo"
# end

# ---------------------------------------------------------------------------------------------------------

# Modifique a questão anterior para contemplar o seguinte: quando os lados do triângulo forem válidos, o algoritmo deve informar qual é o tipo de triângulo formado pelos lados. O triângulo equilátero é formado quando os três lados são iguais. O triângulo isósceles é formado quando dois lados quaisquer são iguais, e o triângulo escaleno é formado quando os três lados são diferentes entre si.

# if triangulo
#   if lado_a == lado_b and lado_b == lado_c
#     puts "Triângulo Equilátero"
#   elsif lado_a == lado_b or lado_b == lado_c or lado_a == lado_c
#     puts "Triângulo isósceles"
#   else
#     puts "Triângulo escaleno"
#   end
# end

# ---------------------------------------------------------------------------------------------------------

# Crie um script em Ruby que permita ao usuário digitar um ano. Em seguida, o script deve informar se o ano (informado pelo usuário) é ou não bissexto. Dica: um ano é bissexto se ele for divisível por 400, ou se ele for divisível por 4 e não por 100.

# puts "Digite um ano"
# ano = gets.to_i

# if (ano % 400 == 0) or (ano % 4 == 0 and ano % 100 != 0)
#   puts ano % 400
#   puts "Bissexto"
# else
#   puts "Não é bissexto"
# end

# ---------------------------------------------------------------------------------------------------------

# Crie um script em Ruby que receba três notas, calcule e mostre a média aritmética e, além disso, mostre a situação do aluno (aprovado, recuperação ou reprovado). Se a média for maior ou igual a 7, o aluno está aprovado; se for menor que 7 e maior ou igual a 5, o aluno está de recuperação; se for menor que 5, o aluno está reprovado.

# puts "Nota 1"
# n1 = gets.to_i
# puts "Nota 2"
# n2 = gets.to_i
# puts "Nota 3"
# n3 = gets.to_i

# media = (n1+n2+n3)/3

# if media >= 7
#   puts "Aprovado com media #{media}"
# elsif 7 > media and media >= 5
#   puts "Recuperação com média #{media}"
# else
#   puts "Reprovado com média #{media}"
# end

# ---------------------------------------------------------------------------------------------------------

# Desenvolva um script em Ruby que leia a velocidade máxima permitida em uma avenida e a velocidade com que o motorista estava dirigindo nela. Calcule e mostre a multa que uma pessoa vai receber, sabendo que são pagos: R$ 50 reais se o motorista ultrapassar em até 10km/h a velocidade permitida; R$ 100 reais, se o motorista ultrapassar de 11 a 30 km/h a velocidade permitida; e R$ 200 reais, se estiver acima de 31km/h da velocidade permitida.

# kms_permitidos = 50
# puts "Digite a que o motorista estava dirigindo"
# velocidade_motorista = gets.to_i

# calculo_multa = velocidade_motorista - kms_permitidos

# puts calculo_multa

# if calculo_multa <= 10
#   puts "Multa de R$ 50 reais"
# elsif calculo_multa > 10 and calculo_multa <= 30
#   puts "Multa de R$ 100 reais"
# else
#   puts "Multa de R$ 200 reais"
# end

# ---------------------------------------------------------------------------------------------------------

# 6) O imposto de renda de uma pessoa varia segundo uma tabela. Se o salário for menor do que R$ 1.000,00, não há imposto, se for entre R$ 1.000,00 e R$ 2.200,00, o imposto é de 13%, se for maior do que 2.200,00, o imposto é de 22%. Crie um script em Ruby que, dado um valor em reais informado pelo usuário, correspondente a um salário, informe o valor que será recebido (total menos o imposto).

# puts "Digite o salário"
# salario = gets.to_i

# if salario > 2200
#   puts "Imposto de 22% = #{salario*0.22} reais"
# elsif salario > 1000 and salario <= 2200
#   puts "Imposto de 13% = #{salario*0.13} reais"
# else
#   puts "Livre de imposto"
# end

# ---------------------------------------------------------------------------------------------------------

# 7) Desenvolva um script em Ruby que informe se uma data é válida ou não. O script deverá ler 3 números inteiros, que representem o dia, o mês e o ano da data. Uma data é considerada válida quando o dia estiver entre 1 e 31, o mês estiver entre 1 e 12 e o ano for maior que zero.

dia = gets.to_i
mes = gets.to_i
ano = gets.to_i

if dia >= 1 and dia <= 31 and mes >= 1 and mes <= 12 and ano > 0
  puts "Data válida"
else
  puts "Data inválida"
end
