class DocumentNotFound < StandardError
  def initialize(mensagem)
    @mensagem = mensagem
  end

  def mensagem_formatada
    "-- #{@mensagem}"
  end
end
