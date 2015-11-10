Nodo = Struct.new(:value, :next)

class Lista
    attr_accessor :cabeza, :actual
    def initialize
        @cabeza = nil
        @actual = nil
    end
end