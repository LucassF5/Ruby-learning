class Biblioteca
  def initialize
    @livros = {}
  end

  def adiciona(livro)
    @livros[livro.categoria] ||= []
    @livros[livro.categoria] << livro
  end

  def livros
    @livros.values.flatten
  end

  def livros_por_categoria(categoria)
    @livros[categoria].each do |livros|
      # para cada valor de categoria da instâmcia de biblioteca inicia um bloco
      yield livros if block_given?
      # Se o bloco foi passado, executa o bloco, caso contrário, não faz nada
    end
  end

end

require File.expand_path("livro", File.dirname(__FILE__))
livro = Livro.new("Lucas Franco", 123, 250, 50, :testes)
livro2 = Livro.new("Maria", 234, 300, 79.9, :acao)
livro3 = Livro.new("Lua", 123, 300, 64.9, :testes)


biblioteca = Biblioteca.new
biblioteca.adiciona livro
biblioteca.adiciona livro2
biblioteca.adiciona livro3

biblioteca.livros_por_categoria :acao
