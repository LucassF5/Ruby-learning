require 'yaml'
require 'fileutils'

class Revista

  attr_reader :titulo, :id
  attr_accessor :valor

  def initialize(titulo, valor)
    @titulo = titulo
    @valor = valor
    @id = self.class.next_id # Atribui um novo id ao objeto Revista
  end

  def save
    FileUtils.mkdir_p("db/revistas") # Cria o diretório caso não exista

    File.open("db/revistas/#{id}.yml", "w") do |file| # Salva o objeto em um arquivo .yml
      file.puts serialize
    end
  end

  def self.find(id)
    YAML.safe_load File.open("db/revistas/#{id}.yml", "r"), permitted_classes: [Revista] # Carrega o objeto Revista
  end
  
  private

  def serialize
    YAML.dump self # Serializa o objeto Revista
  end

  def self.next_id
    Dir.glob("db/revistas/*.yml").size + 1 # Retorna o próximo id disponível
  end
end

mundo_j = Revista.find 1 # Carrega o objeto Revista
puts mundo_j.valor # Exibe o valor da revista
