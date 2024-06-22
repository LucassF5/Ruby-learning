class Midia
  attr_reader :valor
  attr_accessor :titulo

  def initialize
    @desconto = 0.1
  end

  def valor_com_desconto
    @valor - desconto
  end

  private

  def desconto
    @valor * @desconto
  end

  def valor_formatado
    "R$ #{@valor}"
  end
end
