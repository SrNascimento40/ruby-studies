class Foo
    attr_accessor :teste
    def bar
      puts self
      #aponta para o atual objeto
    end
end
  
foo = Foo.new
puts foo
foo.bar
#ambos imprimem a mesma instancia da classe


class Pen
    attr_accessor :color
    def pen_color
      puts "The color is " + self.color
    end
  end
  
  pen = Pen.new
  pen.color = "blue"
  pen.pen_color