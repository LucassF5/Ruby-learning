class Biblioteca
  # attr_reader :livros

  def initialize
    @banco_de_arquivos = BancoDeArquivos.new
  end

  def adiciona(livro)
    salva(livro){
      livros << livro
    }
  end

  def livros_por_categoria(categoria)
    livros.select { |livro| livro.categoria == categoria}
  end

  def livros
    @livros ||= @banco_de_arquivos.carrega
  end

  def salva(livro)
    @banco_de_arquivos.salva(livro)
    yield
  end
end

# require File.expand_path("livro", File.dirname(__FILE__))
# livro = Livro.new("Lucas Franco", 123, 250, 50, :testes)
# livro2 = Livro.new("Maria", 234, 300, 79.9, :acao)
# livro3 = Livro.new("Lua", 123, 300, 64.9, :testes)


biblioteca = Biblioteca.new
# biblioteca.adiciona livro
# biblioteca.adiciona livro2
# biblioteca.adiciona livro3

# biblioteca.livros_por_categoria :acao
biblioteca.adiciona Livro.new "TDD", "Mauricio Aniche", "123454",
247, 69.9, :testes
