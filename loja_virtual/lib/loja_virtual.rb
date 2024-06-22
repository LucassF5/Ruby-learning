# require 'active_file'
require File.expand_path("loja_virtual/lib/biblioteca")
# require 'active_file'
require File.expand_path("loja_virtual/lib/livro")
require File.expand_path("loja_virtual/lib/relatorio")
require File.expand_path("loja_virtual/lib/banco_de_arquivos")
require File.expand_path("loja_virtual/lib/midia")
require File.expand_path("loja_virtual/lib/dvd")



biblioteca = Biblioteca.new

hp = Livro.new("Harry Potter", "Lucas Franco", 123456, 250, 50, :acao)
got = Livro.new("Game of thrones", "Maria", 455667, 300, 79.9, :comedia)

biblioteca.adiciona(hp)
biblioteca.adiciona(got)

relatorio = Relatorio.new biblioteca
# p relatorio.total
p relatorio.titulos
# biblioteca.livros_por_categoria :acao
