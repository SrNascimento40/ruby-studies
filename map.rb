    array = [1, 2, 3, 4]

    puts "\n Executando .map multiplicando todos os itens por 2"

    new_array = array.map do |element|
        element * 2
    end

    puts "Original: #{array}"
    puts "Novo: #{new_array}"