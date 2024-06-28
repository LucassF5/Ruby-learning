module ActiveFile
  def save
    FileUtils.mkdir_p("db/revistas") # Cria o diretório caso não exista
    @new_record = false # Atribui false ao atributo new_record

    File.open("db/revistas/#{id}.yml", "w") do |file| # Salva o objeto em um arquivo .yml
      file.puts serialize
    end
  end

  def destroy
    unless @destroyed or @new_record # Verifica se o objeto já foi removido ou novo registro
      @destroyed = true # Atribui true ao atributo destroyed
      FileUtils.rm("db/revistas/#{id}.yml") # Remove o arquivo .yml
    end
  end

  module ClassMethods
    def find(id)
      raise DocumentNotFound, # Lança uma exceção caso o arquivo não seja encontrado
            "Arquivo db/revistas/#{id}.yml não encontrado", caller
          unless File.exists?("db/revistas/#{id}.yml")
        YAML.safe_load File.open("db/revistas/#{id}.yml", "r"), permitted_classes: [Revista] # Carrega o objeto Revista
      end
    end

  def next_id
    Dir.glob("db/revistas/*.yml").size + 1 # Retorna o próximo id disponível
  end

  def self.included(base)
    base.extend ClassMethods
  end

  private

  def serialize
    YAML.dump self # Serializa o objeto Revista
  end
end
