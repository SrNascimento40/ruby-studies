class Bar
    def foo
      # Pode ser definida com letra minúscula ou iniciando com _
      local = 'local é acessada apenas dentro deste metodo'
      puts local
    end
  
    def example
      local
    #   Como a variavel local foi definida localmente, ao tentar chamá-la aqui, resultará em erro
    end
  end
  
  bar = Bar.new
  bar.foo
  bar.exemplo
  