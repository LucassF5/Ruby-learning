require File.expand_path("loja_virtual/lib/midia")
require File.expand_path("loja_virtual/lib/formatador_moeda")

class DVD < Midia

  # include FormatadorMoeda
  attr_reader :titulo

  #self indicando uma referência a própria classe, à instância da classe
  def self.formata_moeda(*variaveis_e_metodos)
    variaveis_e_metodos.each do |name|
      define_method("#{name}_formatado") do
        valor= respond_to?(name) ? send(name) : instance_variable_get("@#{name}")
      "R$ #{valor}"
      end
    end
  end

  formata_moeda :valor, :valor_com_desconto

  puts "O self aqui é: #{self}"
  puts "O self aqui é do tipo: #{self.class}"

  def initialize(titulo, valor, categoria)
    super() # Invocando o método super
    @titulo = titulo
    @valor = valor
    @categoria = categoria
    # @desconto = 0.1
  end

  def to_s
    %Q{ Titulo: #{@titulo}, Valor: #{@valor} }
  end

end


xuxa = DVD.new "Xuxa1", 3.00, :musica
puts xuxa.valor_formatado
puts xuxa.valor_com_desconto_formatado

xuxa2 = DVD.new "Xuxa21", 3.00, :musica
# puts xuxa2.id
