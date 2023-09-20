#private apenas os métodos públicos da classe ou herdeiros dela, podem acessar

class Foo
    def call_private
      bar
    end
  
    private
    #tudo depois do private é privado
  
    def bar
      puts "private method"
    end
end

foo = Foo.new

foo.call_private
# foo.bar não funcionaria
