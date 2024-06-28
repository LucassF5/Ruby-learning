require 'yaml'
require 'fileutils'
require File.expand_path("loja_virtual/lib/document_not_found")

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
    raise DocumentNotFound, # Lança uma exceção caso o arquivo não seja encontrado
          "Arquivo db/revistas/#{id}.yml não encontrado", caller
        unless File.exists?("db/revistas/#{id}.yml")
      YAML.safe_load File.open("db/revistas/#{id}.yml", "r"), permitted_classes: [Revista] # Carrega o objeto Revista
    end
  end

  private

  def serialize
    YAML.dump self # Serializa o objeto Revista
  end

  def self.next_id
    Dir.glob("db/revistas/*.yml").size + 1 # Retorna o próximo id disponível
  end
end
mundo_j = Revista.new "Mundo J", 10.0 # Cria um novo objeto Revista
mundo_j.save # Salva o objeto Revista em um arquivo .yml

begin
  mundo_j = Revista.find 1 # Carrega o objeto Revista
rescue DocumentNotFound => erro # Exception Handler
  puts "O objeto não foi encontrado, #{erro.message}"
  # retry ## Tenta novamente
end

# puts mundo_j.valor # Exibe o valor da revista
