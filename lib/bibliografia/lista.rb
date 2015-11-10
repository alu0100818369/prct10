Nodo = Struct.new(:value, :next)

class Lista
    attr_accessor :cabeza, :actual
    def initialize
        @cabeza = nil
        @actual = nil
    end
    def insertar (valor)
        aux = Nodo.new(valor,nil)
        if @cabeza == nil
            @cabeza = aux
            @actual = aux
        elsif @cabeza != nil
            @actual.next = aux
            @actual = aux
        end
    end
end