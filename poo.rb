# definindo uma classe para criação de objetos
class Computer
  def turn_on
    'turn on the computer'
  end

  def shutdown
    'shutdown the computer'
  end
end
 
# criando objeto
computer = Computer.new
puts computer.shutdown