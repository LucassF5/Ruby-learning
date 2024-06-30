# Gems

=begin
Usando GEMS no Ruby

GEMS são pacotes de códigos que podem ser usados em nossos programas Ruby
Para instalar uma GEM, basta usar o comando gem install nome_da_gem
Para usar uma GEM em um programa Ruby, basta usar a diretiva require 'nome_da_gem'
Para ver a lista de GEMS instaladas, use o comando gem list

Exemplo de uso da GEM 'brcep'

Instale a GEM 'brcep' com o comando gem install brcep
Depois, execute o código abaixo para buscar o endereço de um CEP
=end

require 'brcep'

cep = '64800750'
ende = BuscaEndereco.cep(cep)

puts ende
ende.each do |key, value|
  puts "#{key} => #{value}"
end

=begin
O código acima busca o endereço do CEP 64800750 e exibe o resultado na tela
O método BuscaEndereco.cep(64078650) retorna um hash com os dados do endereço
O método each é usado para percorrer o hash e exibir os dados na tela
=end

require 'brnumeros'

valor = 103746537
puts valor.por_extenso

=begin
GEM bundler e Gemfile

O bundler é uma GEM que facilita o gerenciamento de GEMS em um projeto Ruby
O Gemfile é um arquivo que lista as GEMS usadas em um projeto Ruby
Para instalar as GEMS listadas no Gemfile, basta usar o comando bundle install
Para executar um programa Ruby com as GEMS listadas no Gemfile, basta usar o comando bundle exec
ruby nome_do_programa.rb
=end
