# criação da classe pai
class Instrumento
    def escrever
      puts 'Escrevendo'
    end
end
   
# criação da classe filho que faz um polimorfismo, mudando a função escrever
  class Lapis < Instrumento
    def escrever
      puts 'Escrevendo à Lápis'
    end
end

# criação da classe filho que faz um polimorfismo, mudando a função escrever
  class Caneta < Instrumento
    def escrever
      puts 'Escrevendo à Caneta'
    end
end
  
# aqui é incrementado uma nova atividade para a função escrever
  class MaquinaDeEscrever < Instrumento
    def escrever
      super
      puts 'com a máquina'
    end
end
   
instrumentos = [Lapis.new, Caneta.new]
# Chamamos o método escrever pra qualquer instrumento
Instrumentos.each do |instrumento|
    Instrumento.escrever
end
  