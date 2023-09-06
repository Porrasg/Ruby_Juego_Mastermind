class Player
    attr_reader :name
    def initialize(name)
    @name = name
    end
end

class Start
    def initialize(player)
        @player = player
    end
    def iniciar
        puts "¡Bienvenido, #{@player.name}!"
    end
end


puts "Ingresa tu nombre:"
name_player = gets.chomp
player1 = Player.new(name_player)
jugar = Start.new(player1)
jugar.iniciar