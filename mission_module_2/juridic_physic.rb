module Person
    class Juridic
      def initialize(name, cnpj)
        @name = name
        @cnpj = cnpj
      end
  
      def add
        puts 'Pessoa Jurídica Adicionada'
        puts "nome: #{@name}"
        puts "cnpj: #{@cnpj}"
      end
    end
  
    class Physical
      def initialize(name, cpf)
        @name = name
        @cpf = cpf
      end
  
      def add
        puts 'Pessoa Física Adicionada'
        puts "nome: #{@name}"
        puts "cpf: #{@cpf}"
      end
    end
  end
  
  Person::Juridic.new('Enterprise LTDA', '0000.000/0000').add
  Person::Physical.new('Wallace', '000.000.000-00').add
  
  