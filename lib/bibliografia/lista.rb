require_relative 'bibliog'
Nodo = Struct.new(:value, :next, :ant)

class Lista
    attr_accessor :cabeza, :actual
    def initialize
        @cabeza = nil
        @actual = nil
    end
    
    def insertar(valor)
        aux = Nodo.new(valor,nil)
        if @cabeza == nil
            @cabeza = aux
            @actual = aux
            else
                @actual.next = aux
                @actual = aux
        end
    end
    
    def eliminar
        aux = @cabeza.next
        @cabeza = aux
    end
    
    def pop
        aux2 = @cabeza.value
        @cabeza = @cabeza.next
        if aux2.instance_of?Bibliog
            aux2.to_s
        else
            aux2.to_s
        end
    end
end