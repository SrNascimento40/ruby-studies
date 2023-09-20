#Quando um método é marcado como protected, ele pode ser chamado por qualquer instância da mesma classe ou de subclasses.
#podem ser chamados com um receptor explícito

class Foo
    def call_protected(instance)
      instance.bar
    end
  
    protected
  
    def bar
      puts "protected method"
    end
  end
  
  instance_1 = Foo.new
  
  instance_2 = Foo.new
  
  instance_1.call_protected(instance_1)
  
  instance_1.call_protected(instance_2)