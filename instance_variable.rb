class User
    def add(name)
        # valor de name é específico ao objeto e não à classe
      @name = name
      puts "User adicionado"
      hello
    end

    def hello
      puts "Seja bem vindo, #{@name}!"
    end
end

user = User.new
user.add('João')
  
