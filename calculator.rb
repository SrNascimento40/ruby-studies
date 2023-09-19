result = ''

loop do
    puts result
    puts "Selecione uma das seuintes operações: "
    puts "1 - somar"
    puts "2 - subtrair"
    puts "3 - multiplicar"
    puts "4 - dividir"
    puts "0 - sair"
    puts "opção: "

    option = gets.chomp.to_i

    case option
    when 1..4
        print "\n", "primeiro número: "
        number1 = gets.chomp.to_f
        print "\n", "Segundo número: "
        number2 = gets.chomp.to_f

        case option
            when 1
                addition = number1 + number2
                result = "O resultado da soma dos números é #{addition}", "\n"
            when 2
                subtraction = number1 - number2
                result = "O resultado da subtração dos números é #{subtraction}", "\n"
            when 3
                multiplication = number1 * number2
                result = "O resultado da Multiplicação dos números é #{multiplication}", "\n"
            when 4
                division = number1 / number2
                result = "O resultado da divisão dos números é #{division}", "\n"
        end
    when 0
        break
    end
end
