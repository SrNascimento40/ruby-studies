print 'Digite seu nome: ' 
name = gets.chomp
puts "Hello #{name}!"

print "\n", "primeiro número: "
number1 = gets.chomp.to_i
print "\n", "Segundo número: "
number2 = gets.chomp.to_i
addition = number1 + number2
puts "\n", "o resultado da soma dos número é #{addition}"