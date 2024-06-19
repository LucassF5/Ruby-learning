# file = File.new("arquivo","r")
# puts file.size

File.open("arquivo.txt", "w") do |arquivo_temp| # Criando arquivo
  arquivo_temp.puts "Imprimindo primeira linha"
  arquivo_temp.puts "Imprimindo segunda linha"
end

file = File.open("arquivo.txt","r")
# file.each { |linha|
#   p linha
# }

# puts file.read # Método para ler arquivo

File.foreach("arquivo.txt") { |line| puts line } # Método para ler arquivo

if File.exist?("arquivo.txt")
  puts "\nFile size: #{File.size("arquivo.txt")}"
  puts "Is a directory? #{File.directory?("arquivo.txt")}"
  puts "Is a file? #{File.file?("arquivo.txt")}"
end
