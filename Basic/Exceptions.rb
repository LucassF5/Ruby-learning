# Exceptions

=begin

- Begin atua como o try,
- Rescue atua como o catch/except
- Ensure atua como o finally

O raise é usado para lançar uma exceção.
O rescue é usado para capturar uma exceção e executar o código para lidar com ela.
O ensure é usado para executar o código que sempre será executado, independentemente de ter ocorrido exceção.

=end


def divide(a, b)
  raise ZeroDivisionError, "Divisor não pode ser zero" if b == 0
  a / b
end

begin # inicio do bloco de tratamento de exceções
  puts divide(10, 0) # tenta executar o método divide
rescue ArgumentError => e # captura a exceção ArgumentError
  puts "Erro: #{e.message}"
ensure # executa o bloco de código independentemente de ter ocorrido uma exceção ou não
  puts "Finalizando o programa"
end
