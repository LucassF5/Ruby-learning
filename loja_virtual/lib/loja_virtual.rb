# require 'active_file'
require File.expand_path("loja_virtual/lib/biblioteca")
# require 'active_file'
require File.expand_path("loja_virtual/lib/livro")



biblioteca = Biblioteca.new

livro = Livro.new("Lucas Franco", 123456, 250, 50, :acao)
livro2 = Livro.new("Maria", 455667, 300, 79.9, :comedia)

biblioteca.adiciona(livro)
biblioteca.adiciona(livro2)

# puts biblioteca.livros


# for livro in biblioteca.livros do
#   p livro.preco
# end


hash = {acao: [livro], comedia: [livro2]}
# tipo acao e comedia recebendo seus resepctivos arrays e sendo passados para hash


puts hash[:acao]


# ||= significa que se o valor for nulo, ele vai receber o valor que está sendo passado
# Exemplo:
# idade = nil
# idade ||= 27
# Se idade for nil ou não esteja declarado, ele vai receber 27
