#Essa , 'a' significa append, que vai adicionar no fim do arquivo
#trocando 'a' por 'w' você reescreve o arquivo
File.open('list.txt', 'a') do |line|
    line.puts('')
    line.puts('rice')
    line.puts('beans')
    line.print('Orange')
    line.print(' juice')
    line.puts('')
  end
  