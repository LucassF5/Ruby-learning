require 'yaml'
require 'fileutils'
require File.expand_path("loja_virtual/lib/document_not_found")
require File.expand_path("loja_virtual/lib/active_file")

class Revista

  attr_reader :titulo, :id, :destroyed, :new_record
  attr_accessor :valor

  include ActiveFile

  def initialize(titulo, valor)
    @titulo = titulo
    @valor = valor
    @id = self.class.next_id # Atribui um novo id ao objeto Revista
    @destroyed = false
    @new_record = true
  end
end


mundo_j = Revista.new "Mundo J", 10.0 # Cria um novo objeto Revista
mundo_j.save # Salva o objeto Revista em um arquivo .yml

mundo_j = Revista.find 1 # Carrega o objeto Revista
puts mundo_j.valor # Exibe o valor da revista

mundo_j.destroy # Remove o arquivo .yml
