# definição de um bloco de uma linha
5.times { puts "exec the block"}

# definição de um bloco de uma linha com um argumento
sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number }
puts sum


# definição de um bloco de várias linhas
foo = {2 => 3, 4 => 5}

foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end


# definição de um bloco como argumento
def foo
    # Call the block
    yield
    yield
end
  
foo { puts "Exec the block"}
# parametro parasso pro metodo será executado pelo yield

def foo
    if block_given?
      # varifica se foi passádo algum parâmetro para o bloco
      yield
    else
      puts "Sem parâmetro do tipo bloco"
    end
end
  
foo
foo { puts "Com parâmetro do tipo bloco"}
  
# outra forma de passar um bloco como parâmetro
def foo(name, &block)
    @name = name
    block.call
  end
  
  foo('Leonardo') { puts "Hellow #{@name}" }
  
def foo(numbers, &block)
    if block_given?
      numbers.each do |key, value|
        block.call(key, value)
      end
    end
end
  
numbers = { 2 => 2, 3 => 3, 4 => 4 }
# bloco de várias linhas como parâmetro
foo(numbers) do |key, value|
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
    puts "---"
end
  