result = ''

loop do
    puts result
    puts '1 - Descobrir a idade'
    puts '0 - Sair'
    print 'Opção: '

    option = gets.chomp.to_i
    if option == 1
        print 'Digite o ano de nascimento: '
        year_of_birth = gets.chomp.to_i
        print 'Digite o ano Atual: '
        current_year = gets.chomp.to_i

        age = current_year - year_of_birth
        result = "Quem nasceu no ano de #{year_of_birth} tem #{age} anos"
    elsif option == 0
        break
    else
        result = "opção inválida"
    end
    system "clear"
end

