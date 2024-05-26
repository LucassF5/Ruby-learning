# Usando condicionais e estruturas de controle de código
idade = 22
print "Digite seu nome: "
name = gets.chomp

# if (idade > 18)
#     puts name
# end

# No ruby pode-se colocar a condição sem o uso de parêntesis
# Também não é necessário colocar {} para indicar o final da condicional, basta colocar a palavra end

#  Para deixar mais legível pode ser usado Syntax Sugar, assim deixando melhor de ser lido
# Se possuir apenas uma linha

puts name if idade > 18
# (Condição verdadeira) if (condicional)

print "Digite sua idade: "
idade = gets.chomp.to_i
if idade < 30
    puts "Vc tem menos de 30 anos"
elsif idade == 30
    puts "Vc tem 30 anos"
else
    puts "Vc tem mais de 30 anos"
end


# NO LUGAR DE USAR UM *IF NOT* PODE-SE USAR UM **UNLESS**

unless name == "Outro"
    puts "Você é o Lucas"
else
    puts "Vc não é o Lucas"
end


# Usando switch case

print "Digite o mês que vc nasceu: "
month = gets.chomp.to_i

case month
when 1..3
    puts "Você nasceu no começo do ano"
when 9..12
    puts "Você nasceu no final do ano"
when 4..6
    puts "Você nasceu na primeira metade do ano"
when 7..9
    puts "Você nasceu na segunda metade do ano"
else
    puts "Nã foi possível identificar"
end