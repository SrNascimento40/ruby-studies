class Mercado
    def initialize(produto, price)
        @produto = produto
        @price = price
    end

    def comprar
        puts "Você comprou o produto #{@produto} no valor de #{@price}"
    end
end

