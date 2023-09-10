require_relative "player"
require_relative "instruction"

class Start
    def initialize
        @player = Player.new
    end

    def creator_or_player
        puts "¡Bienvenido al juego Mastermind!"
        puts "--------------------------------"
        puts "Ingresa tu nombre:"
        name = gets.chomp
        @player.assign_name(name)
        puts "--------------------------------"
        puts "¿Deseas ser el creador del código(c) o el adivinador(a)?"
        answer = gets.chomp.downcase
        puts "--------------------------------"
        if answer == "a"
            puts "¡Hola! #{@player.read_name} iniciemos el juego como adivinador."
            puts "--------------------------------"
            puts Instructions.instructions
        else 
            puts "¡Hola! #{@player.read_name} iniciemos el juego como creador."
            puts "--------------------------------"
            puts Instructions.instructions
            puts "Crea el código"
            puts "Ingresa 4 colores separados por espacios (por ejemplo: red blue green yellow)"
            create_code = gets.chomp
        end
    end
end