class Relatorio
  def initialize(biblioteca)
    @biblioteca = biblioteca
  end

  def total
    @biblioteca.livros.map(&:valor).inject(:+) # :+ é o valor inicial e lógica de somar
    # @biblioteca.livros.inject(0) {|tot, livro| tot += livro.valor }
    # inject recebe um valor inicial, inject(0), e um bloco com a lógica
  end

  def titulos
    @biblioteca.livros.map &:titulo # Utilizando proc, significa instancia.titulo
    # @biblioteca.livros.map {|livro| livro.titulo}
  end
end
