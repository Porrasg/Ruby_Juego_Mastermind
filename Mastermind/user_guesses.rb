require 'colorize'
require 'pry-byebug' # binding.pry # hay que quitralo cada vez que se termine de usar

require_relative "start"

class UserGuesses
    play = Start.new
    play.creator_or_player

    def initialize
        @secret_code = secret_code_random
    end

    def secret_code_random
        @colors = ["red", "blue", "green", "yellow"]
        @ram_array = @colors.sample(4)
    end
    
    #7. Método para que el usuario ingrese los colores
    def user_guesses
        turn = 1
        ram_array = secret_code_random
        while turn <= 12
            puts "Turno: #{turn}"
            puts "Elige 4 colores (por ejemplo: red blue green yellow):"
            code = gets.chomp.split(" ")
            
            if code.length != 4
                puts "Debes elegir exactamente 4 colores. Inténtalo de nuevo."
                next # Salta a la siguiente iteración del bucle
            end
    
            code.map!(&:downcase) # Convierte los colores ingresados a minúsculas para evitar errores de mayúsculas/minúsculas
    
            right_guess = []
            p "RAMDOM"
            p ram_array
            p "HECHO POR MI"
            p code

            code.each_with_index do |color, index|
                if color == ram_array[index]
                    right_guess << "🟢"
                elsif ram_array.include?(color)
                    right_guess << "🟠"
                else
                    right_guess << "🔴"
                end
            end
    
            puts right_guess.join(" ")
    
            if right_guess.all? { |color| color == "🟢" } # Si adivinó todos los colores
                puts "¡Has adivinado el código secreto!"
                break # Sal del bucle
            end
    
            turn += 1
        end
    
        if turn > 12
            puts "Agotaste tus 12 intentos. El código secreto era: #{ram_array.join(" ")}"
        end
    end
end