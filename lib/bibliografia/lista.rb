Nodo = Struct.new(:value, :next)

class Lista
    attr_accessor :cabeza
    def initialize
        @cabeza = nil
    end
end