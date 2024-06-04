# Ruby-learning
## Iniciando estudos de Ruby

### Comando para exibir algo na tela
puts
Ex: puts "Hello World"

### Comando para pegar alguma entrada do usuário
gets
Ex: nome = gets

### Concatenação e Interpolação
puts "Olá " + nome // Concatenação
puts "Olá #{nome}" // Interpolação

### Type Casting
numero = gets.to_i // Converte para inteiro
numero = gets.to_f // Converte para float
string = gets.to_s // Converte para string
array = gets.split // Converte para array

### Operadores 
+ // Adição
- // Subtração
* // Multiplicação
/ // Divisão
% // Módulo
** // Exponenciação
== // Comparação
!= // Difer
/> // Maior
< // Menor
>= // Maior ou igual
<= // Menor ou igual

### Comparação
numero_da_sorte = 8
numero_aleatorio = 7
puts numero_da_sorte == numero_aleatorio
Caso verdadeiro retorna true, caso falso retorna false

### Condicional
if numero_da_sorte == numero_aleatorio
  puts "Você acertou!"
else
  puts "Você errou!"
end

### Condicional com mais de uma condição
if numero_da_sorte == numero_aleatorio
  puts "Você acertou!"
elsif numero_da_sorte > numero_aleatorio
    puts "Você errou! O número da sorte é menor"
else
    puts "Você errou! O número da sorte é maior"
end
