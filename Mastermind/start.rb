require_relative "player"

class Start
    def initialize
        @player = Player.new
    end

    def creator_or_player
        puts "¡Bienvenido al juego Mastermind!"
        puts "¿Deseas ser el creador del código(c) o el adivinador(a)?"
        answer = gets.chomp.downcase
        if answer == "a"
            puts "Ingresa tu nombre"
            name = gets.chomp
            @player.assign_name(name)
            puts "¡Hola! #{@player.read_name} iniciemos el juego como adivinador"
            puts "intruciones..."
        else 
            puts "crea el codigo: "
            create_code = gets.chomp
        end
    end
end