loop do
    puts "\nSelecione uma das seguintes opções"
    puts "1 - Somar"
    puts "2 - Subtrair"
    puts "3 - Multiplicar"
    puts "4 - Dividir"
    puts "0 - Sair"
    puts '_____________________'
    print "\nOpção: "

    option = gets.chomp.to_i
    puts '_____________________'

    puts "\nAgora escolha dois números"
    print "\nPrimeiro número: "
    number_1 = gets.chomp.to_i
    print "\nSegundo número: "
    number_2 = gets.chomp.to_i

    case option
    when 1
        puts "O resultado da soma é: #{number_1 + number_2}"
    when 2
        puts "O resultado da subtração é: #{number_1 - number_2}"
    when 3
        puts "O resultado da multiplicação é: #{number_1 * number_2}"
    when 4
        if number_2 == 0
            puts "Divisão impossível, pois o denominador é 0"
        else 
            puts "O resultado da divisão é: #{number_1 / number_2}"
        end
    when 0 
        break
    else
        system "cls"
        puts 'Opção inválida'
    end
end
