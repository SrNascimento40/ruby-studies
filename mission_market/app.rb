require_relative 'produto'
require_relative 'mercado'

produto = Produto.new
produto.name = 'orange'
produto.price = 1.25

Mercado.new(produto.name, produto.price).comprar

