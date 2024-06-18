# Classes
# Esportista
#   Method -> competir(imprime a mensagem "Participando de uma competição")
# JogadorDeFutebol
#   Method -> correr(imprime a mensagem "Correndo atrás da bola")
# Maratonista
#   Method -> correr(imprime a mensagem "Percorrendo o circuito")

class Esportista
  def competir
    puts Participando de uma competição
  end
end

class JogadorDeFutebol < Esportista

  def initialize(name)
    @name = name
  end

  def correr
    puts "#{@name} está correndo atrás da bola"
  end

end

class Maratonista < Esportista

  def initialize(name)
    @name = name
  end

  def correr
    puts "#{@name} está percorrendo o circuito"
  end

end


lucas = JogadorDeFutebol.new("Lucas")
maria = Maratonista.new("Maria")

puts lucas.correr
puts maria.cirrer
