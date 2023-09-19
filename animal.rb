# criando uma classe pai
class Animal 
    def pular
      puts 'Toing! tóim! bóim! póim!'
    end
   
    def dormir
      puts 'ZzZzzz!'
    end
end

#  Criando a classe filho, que vai herdar as características da classe Animal
class Cachorro < Animal
    def latir
      puts 'Au Au'
    end
end
   
# assim o cachorro tem ambas as características de cachorro ou animal
cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir​

