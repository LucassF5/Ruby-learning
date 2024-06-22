require File.expand_path("loja_virtual/lib/midia")
require File.expand_path("loja_virtual/lib/formatador_moeda")

class Livro < Midia
  attr_reader :categoria, :autor

  include FormatadorMoeda # Incluindo Mixin

  def initialize(titulo, autor, isbn="1", numero_de_paginas, valor, categoria)
    @titulo = titulo
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @valor = valor
    @categoria = categoria
    @desconto = 0.15
  end

  def to_s
      "Autor: #{@autor}, ISBN: #{@isbn},
      Número de páginas: #{@numero_de_paginas},
      Valor: #{@valor}, Categoria: #{@categoria}"
  end

  def eql?(outro_livro) # Sobrescrevendo o método eql? para comparar objetos
    @isbn == outro_livro.isbn
  end

  def hash # Sobrescrevendo o método hash para comparar objetos
    @isbn.hash
  end
end


# Criando objetos da classe Livro
# livro = Livro.new("Lucas Franco", 123, 250, 50, :testes)
# livro2 = Livro.new("Maria", 234, 300, 79.9, :acao)
# livro3 = Livro.new("Lua", 123, 300, 64.9, :comedia)

# Comparando objetos com o método eql?
# puts livro.eql?(livro2) # false
# puts livro2.eql?(livro3) # false
# puts livro.eql?(livro3) # true => ISBNs iguais

# Comparando objetos com o método hash
# puts livro.hash == livro2.hash # false
# puts livro2.hash == livro3.hash # false
# puts livro.hash == livro3.hash # true => ISBNs iguais

# require 'set'
=begin
  Set é uma coleção de valores não ordenada, sem elementos duplicados.
  Para evitar duplicidade o Set utiliza os métodos eql? e hash.
  Se dois objetos são iguais, o método eql? deve retornar true e o método hash deve retornar o mesmo valor para ambos.
=end

# Criando um conjunto de livros
# livros = Set.new [livro, livro2, livro3]

# Iterando sobre o conjunto de livros
# livros.each do |livro|
  # puts livro
# end

# Saída:
# Autor: Lucas Franco, ISBN: 123, Número de páginas: 250, Preço: 50, Categoria: testes
# Autor: Maria, ISBN: 234, Número de páginas: 300, Preço: 79.9, Categoria: acao

# O livro3 não foi adicionado ao conjunto de livros, pois o ISBN dele é igual ao do livro1
# Como os métodos eql? e hash foram sobrescritos, o Set não adiciona o livro3 ao conjunto

hotd = Livro.new("HOUSE OF THE DRAGON", "TOLKIEN", 123444, 800, 100.99, :acao)
p hotd.valor
p hotd.titulo
p hotd.valor_com_desconto.round(2)
puts hotd.valor_formatado
