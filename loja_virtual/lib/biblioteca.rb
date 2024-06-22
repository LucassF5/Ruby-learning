require File.expand_path("loja_virtual/lib/banco_de_arquivos")
require File.expand_path("loja_virtual/lib/midia")
require File.expand_path("loja_virtual/lib/dvd")

class Biblioteca

  include Enumerable

  def initialize
    @banco_de_arquivos = BancoDeArquivos.new
  end

  def adiciona(midia)
    salva(midia) do
      midias << midia
    end #if midia.kind_of? Midia
  end

  def midias_por_categoria(categoria)
    midias.select { |midia|
      midia.categoria == categoria if midia.respond_to? :categoria
    }
  end

  def midias
    @midias ||= @banco_de_arquivos.carrega
  end

  # método each que possibilita que os outros métodos
  # do módulo Enumerable funcionem em uma instância de Biblioteca
  def each
    midias.each { |midia| yield midia }
  end

  private

  def salva(midia)
    @banco_de_arquivos.salva(midia)
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
# biblioteca.adiciona Livro.new "TDD", "Mauricio Aniche", "123454",
# 247, 69.9, :testes

windows = DVD.new "Windows 7 for Dummies", 98.9, :sistemas_operacionais
biblioteca.adiciona windows
biblioteca.each do |midia|
  p midia.titulo # => Windows 7 for Dummies
end
