=begin   
    Collections são conjuntos de dados que podem ser acessados por um índice ou chave.
    Representam uma coleção de objetos, que podem ser de qualquer tipo, como inteiros, strings, arrays, etc.
    As coleções são usadas para armazenar, recuperar, manipular e comunicar dados.
    São um conjunto de dados semelhantes em uma unidade.
=end

# CRIANDO UM HASH
capitais = Hash.new 
# capitais = {} # Outra forma de criar um hash

capitais = {acre: 'Rio Branco', sao_paulo: 'São Paulo', piaui: 'Teresina'}
# Adicionando elementos ao hash

capitais[:maranhao] = "São Luis" # Adicionando um novo elemento ao hash

capitais.keys # Retorna todas as chaves do hash

capitais.values # Retorna todos os valores do hash


# EXCLUINDO VALORES DO HASH
capitais.delete(:sao_paulo) # Exclui o valor do hash

# capitais.clear # Limpa o hash

# capitais.shift # Remove o primeiro elemento do hash



# PEGANDO INFORMAÇÕES SOBRE O HASH
capitais.size # Retorna o tamanho do hash

capitais.empty? # Retorna true se o hash estiver vazio

capitais.has_key?(:acre) # Verifica se existe a chave :acre no hash

capitais.has_value?('São Paulo') # Verifica se existe o valor 'São Paulo' no hash

capitais.include?(:acre) # Verifica se existe a chave :acre no hash



# ALTERANDO VALORES DO HASH
# capitais[:acre] = nil # Atribui nil ao valor do hash

capitais[:acre] # Retorna o valor do hash

capitais.key('Teresina') # Retorna a chave do hash

capitais.invert # Inverte os valores do hash

# capitais.merge(capitais2) # Mescla os dois hashes

