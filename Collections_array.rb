=begin   
    Collections são conjuntos de dados que podem ser acessados por um índice ou chave.
    Representam uma coleção de objetos, que podem ser de qualquer tipo, como inteiros, strings, arrays, etc.
    As coleções são usadas para armazenar, recuperar, manipular e comunicar dados.
    São um conjunto de dados semelhantes em uma unidade.
=end

# CRIANDO E MANIPULANDO ARRAYS
cidades = Array.new # Criando um array vazio
estados = [] # Criando um array vazio

estados.push("Piauí") #Adicinando elementos, 
estados.push("Amazonas", "São Paulo", "Maranhão", "Pernambuco") #Os elementos vão para a última posição

estados.insert(0, "Acre", "Amapá") #Adicionando na posição desejada
        # inserir(posição desejada, elemento)

estados[2] #Exibindo o elemento selecionado

estados[4] = "Ceará" #Alterando elemento em uma posição específica

estados[0..5] #Exibindo determinado intervalo de elementos, tmabém vale para números negativos

estados.first #Seleciona o primeiro elemento do array

estados.last # Seleciona o último elemento do array

estados.count # Número de elementos do array

# estados.lenght # Número de elementos do array

estados.empty? # Verifica se o array está vazio, retorna um boolean

estados.include?("São Paulo") # Verifica se o elemento está no array, retorna um boolean


# EXCLUINDO ELEMENTOS DO ARRAY
estados.delete_at(5) # Deleta o elemento na posição desejada

estados.pop # Deleta o último elemento do array

estados.shift # Deleta o primeiro elemento do array
