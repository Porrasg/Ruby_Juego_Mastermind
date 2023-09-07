class Player
    attr_reader :name
    def initialize
    @name = nil
    end

    def assign_name(name)
        @name = name
    end

    def read_name
        @name
    end
end