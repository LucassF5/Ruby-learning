result = ''

loop do
    puts result
    puts "Selecione uma das seguintes opções"
    puts "1 - Descobrir a idade de uma pessoa"
    # puts "2 - Limpar tela"
    puts "0 - Sair"
    print 'Opção: '

    option = gets.chomp.to_i

    case option
    when 1
        print 'Digite o ano de nascimento: '
        year_birth = gets.chomp.to_i
        print 'Digite o ano atual: '
        current_year = gets.chomp.to_i
        age = current_year - year_birth
        system "cls"
        result = "Quem nasceu no ano de #{year_birth} tem #{age} anos em #{current_year}"
    # when 2
    #     system "cls"
    when 0 
        break
    else
        system "cls"
        puts 'Opção inválida'
    end
end
