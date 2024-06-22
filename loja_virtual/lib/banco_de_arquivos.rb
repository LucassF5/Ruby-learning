require "yaml"

class BancoDeArquivos
  def salva(midia)
    File.open("midias.yml", "a") { |arquivo|
      arquivo.puts YAML.dump(midia)
      arquivo.puts ""
    }
  end

  def carrega
    $/ = "\n\n"
    File.open("midias.yml", "r").map { |midia_serializado|
    YAML.safe_load(midia_serializado, permitted_classes: [Midia, Symbol, DVD])
    }
  end
end
