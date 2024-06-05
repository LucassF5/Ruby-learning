# Métodos

# Métodos são blocos de código que podem ser chamados por um nome. Eles são definidos com a palavra-chave def, seguida pelo nome do método e, opcionalmente, uma lista de parâmetros entre parênteses. O corpo do método é composto por uma sequência de expressões que são executadas quando o método é chamado.

# Um método pode retornar um valor com a palavra-chave return, seguida por uma expressão. Se o return for omitido, o método retornará o valor da última expressão.

# Exemplo:
def add(a, b)
  return a + b
end

puts add(3, 4) # => 7

# Se o método não aceitar argumentos, os parênteses podem ser omitidos.

# Exemplo:
def say_hello
  puts "Hello"
end

say_hello # => Hello

# Se o método não aceitar argumentos e não tiver corpo, a definição do método pode ser omitida.

# Exemplo:
def say_goodbye = puts "Goodbye"

say_goodbye # => Goodbye

# Métodos podem ser chamados com argumentos posicionais, que são passados na ordem em que são declarados.

# Exemplo:
def divide(a, b)
  return a / b
end

puts divide(10, 2) # => 5
puts divide(30, 5) # => 6

# Métodos podem ser chamados com argumentos nomeados, que são passados com um nome e um valor.

# Exemplo:
def divide(a, b)
  return a / b
end

puts divide(a: 10, b: 2) # => 5
puts divide(b: 2, a: 10) # => 5

# Se um método aceitar argumentos posicionais e nomeados, os argumentos posicionais devem ser passados antes dos argumentos nomeados.

# Exemplo:
def divide(a, b)
  return a / b
end

puts divide(10, b: 2) # => 5
puts divide(a: 10, 2) # => SyntaxError

# Métodos podem ter argumentos opcionais, que são atribuídos a um valor padrão.

# Exemplo:
def divide(a, b = 2)
  return a / b
end

puts divide(10) # => 5
puts divide(10, 5) # => 2

# Métodos podem ter argumentos variádicos, que são precedidos por um asterisco (*). Argumentos variádicos são coletados em um Array.

# Exemplo:
def sum(*numbers)
  total = 0
  numbers.each do |number|
    total += number
  end
  return total
end

puts sum(1, 2, 3) # => 6

# Métodos podem ter argumentos de palavra-chave, que são precedidos por um duplo asterisco (**). Argumentos de palavra-chave são coletados em um Hash.

# Exemplo:
def greet(**names)
  names.each do |title, name|
    puts "#{title} #{name}"
  end
end

greet(mr: "Smith", ms: "Jones") # => Mr Smith\nMs Jones

# Métodos podem ser definidos em qualquer lugar do código, incluindo dentro de outros métodos.

# Exemplo:
def say_hello
  def say_world
    puts "World"
  end
  puts "Hello"
end

say_hello # => Hello
