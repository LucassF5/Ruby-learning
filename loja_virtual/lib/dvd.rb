require File.expand_path("loja_virtual/lib/midia")

class DVD < Midia

  attr_reader :titulo

  def initialize(titulo, valor, categoria)
    super() # Invocando o método super
    @titulo = titulo
    @valor = valor
    @categoria = categoria
    @desconto = 0.1
  end

  def to_s
    %Q{ Titulo: #{@titulo}, Valor: #{@valor} }
  end

end
