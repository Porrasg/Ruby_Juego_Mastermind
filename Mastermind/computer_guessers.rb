
class ComputerGuesses
    attr_writer :all_colors

    def initialize(colors)
        @all_colors = colors
        @all_possible_combinations = colors.repeated_permutation(4).to_a.shuffle
    end

    def guess
        case rand(2)
        when 0 then computer_guess_brute_force
        when 1 then computer_guess_random
        end
    end

    def computer_guess_random
        @all_colors.sample(4)
    end

    def computer_guess_brute_force
        @all_possible_combinations.pop
    end
end
