module FormatadorMoeda
  def valor_formatado
    "R$ #{@valor}"
  end

  def valor_com_desconto_formatado
    "R$ #{@valor_com_desconto}"
  end
end
