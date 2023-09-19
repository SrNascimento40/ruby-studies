# Lambda
# 
# - É uma proc especial
# - Diferente das procs, todo argumento solicitado por uma lambida deve ser suprido para execução correta do codigo
# - Eles são criados usando a palavra-chave lambda ou ->

# ex lambda
my_lambda = lambda { |x| x * 2 }
puts my_lambda.call(3)


# Proc

# - Um Proc é um objeto Proc que é uma instância da classe Proc
# - Você pode criar um Proc usando a sintaxe Proc.new ou ->.
# - Procs são objetos que podem ser atribuídos a variáveis e chamados como métodos
# - Eles têm um comportamento um pouco mais flexível em relação aos argumentos que aceitam. podendo ser executada mesmo sem um argumento

# ex Proc
my_proc = Proc.new { |x| x * 2 }
puts my_proc.call(3)
puts "*" * 66

#ambas são parecidas, mas se diferem na execução com variáveis
#a proc é mais flexível, aceitando executar o código, mesmo sem uma variável
#lambda só executa com a variável

# exemplo de um código igual sendo executado com lambda e com proc

#proc
hello_proc = proc do |msg|
    puts msg
end
   
hello_proc.call

#lambda (código abaixo não vai funcionar, pois falta o algumento para a lambda)
hello_lambda = lambda do |msg|
    puts msg
  end
   
  hello_lambda.call