require 'colorize'

require_relative "start"

class Game
    play = Start.new
    play.creator_or_player

    def initialize
        @colors = ["red", "blue", "green", "yellow"]
        @user_tries_max = 12

        @secret_code = secret_code_random
        @user_tries = 0
    end

    def secret_code_random
        code = []

        4.times do
            code << @colors.sample
        end
        puts "este es el codigo random #{code}"


    end
    
    #7. Método para que el usuario ingrese los colores
    def jugador_usuario_adivina  #es a
        turn = 1
        while turn <= 12
            puts "turno: #{turn}"

            puts "Elige 4 colores (por ejemplo: red blue green yellow):"
            code = gets.chomp.split(" ")
            code.map!(&:to_i)

            right_guess = []
            code.each_with_index do |color, index|
                if code[index] == color
                    right_guess << "🟢"
                else 
                    right_guess << "🟠"
                end
            end
            puts right_guess.map(&:to_s).join
            turn += 1
        end
    end

    #8. Método para que la máquina ingrese los colores
    def jugador_maquina_adivina #es c

    end
end





# puts "Ingresa tu nombre:"
# name_player = gets.chomp
# player1 = Player.new(name_player)
play = Game.new
play.jugador_usuario_adivina