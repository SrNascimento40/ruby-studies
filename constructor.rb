class Person
    def initialize(name, age)
        # método executado logo que um objeto é criado
        # Na função acima obriga que o user crie um objeto passando essas variáveis
      @name = name
      @age = age
    end
   
    def check
      puts "Instância da classe iniciada com os valores:"
      puts "Name = #{@name}"
      puts "Idade = #{@age}"
    end
  end
   
  person = Person.new('João', 12)
  person.check
  