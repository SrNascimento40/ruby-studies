class Dog 
    def name
      @name
    end
   
    def name= name
      @name = name
    end
end
  
dog = Dog.new 
  
#   abaixo está sendo atribuindo um valor a variável de instância
dog.name = 'Marlon'
  
puts dog.name
  
class Cat 
    attr_accessor :name, :age
    # método chamado attr_accessor facilita a declaração de variáveis de intancia e mantem código mais limpo
end
cat = Cat.new 

cat.name = 'Marlon'
puts cat.name

cat.age = '1 ano'
puts cat.age
  