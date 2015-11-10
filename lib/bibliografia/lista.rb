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
        elsif @cabeza.next == nil
            @cabeza.next = aux
            @actual.next = aux
            @actual = aux
            elsif @cabeza.next != nil
                @actual.next = aux
                @actual = aux
        end
    end
    
    def eliminar
        aux = @cabeza.next
        @cabeza = aux
    end
    
    def pop
        aux = @cabeza.next
        aux2 = @cabeza.value
        @cabeza = aux
        aux2
    end
end