class Carro
    def get_km (params)
        find_km(params)
    end

    private

    def find_km(params)
        pattern = /\d\dkm\/h/.match(params)
        puts pattern
    end
end

carro = Carro.new
carro.get_km("Um fusca de cor ama/rela viaja a 80km/h")
