require File.expand_path("loja_virtual/lib/midia")
require File.expand_path("loja_virtual/lib/formatador_moeda")

class CD < Midia

  attr_reader :titulo

  def initialize(titulo, valor, categoria)
    super()
    @titulo = titulo
    @valor = valor
    @categoria = categoria
  end

  def to_s
    %Q{ Titulo: #{@titulo}, Valor: #{@valor}, Categoria: #{@categoria} }
  end
end

windows = CD.new("Windows 95", 239.9, :sistemas_operacionais)
p windows
puts windows
windows.extend FormatadorMoeda # Extendeu o módulo para poder ser usado apenas nessa instância
puts windows.valor_formatado
