require "yaml"

class BancoDeArquivos
  def salva(livro)
    File.open("livros.yml", "a") { |arquivo|
      arquivo.puts YAML.dump(livro)
      arquivo.puts ""
    }
  end

  def carrega
    $/ = "\n\n"
    File.open("livros.yml", "r").map { |livro_serializado|
      YAML.load(livro_serializado)
    }
  end
end
