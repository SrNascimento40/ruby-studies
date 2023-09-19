module VideoGame
    class Player
      def info
        puts 'Precisa de um bom condicionamento físico'
      end
    end
  end
  
module Football
    class Player
      def info
        puts 'Precisa de coordenação motora'
      end
    end
end
  
Football::Player.info
VideoGame::Player.info
  
#module está aqui evitando o conflito nos nomes da classe player
