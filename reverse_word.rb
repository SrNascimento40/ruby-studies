module ReverseWord
  # puts é um método criado
  # modulo evita colisão com o puts do ruby
    def self.puts(text)
      # o kernel é um módulo raiz para usar a função inicial do Ruby
      Kernel::puts text.reverse.to_s
    end
end

ReverseWord::puts 'O resultado é'