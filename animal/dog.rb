require_relative 'animal'

class Cachorro < Animal
    def latir
      puts 'Au Au'
    end
end
  
cachorro = Cachorro.new
cachorro.latir
cachorro.pular