require File.expand_path("loja_virtual/lib/midia")

class DVD < Midia
  def initialize(titulo, valor, categoria)
    @titulo = titulo
    @valor = valor
    @categoria = categoria
  end

  def to_s
    %Q{ Titulo: #{@titulo}, Valor: #{@valor}, Categoria: #{@categoria} }
  end

end
