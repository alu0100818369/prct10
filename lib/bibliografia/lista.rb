require_relative 'bibliog'
Nodo = Struct.new(:value, :next, :ant)

class Lista
    attr_accessor :cabeza, :actual
    include Enumerable
    def initialize
        @cabeza = nil
        @actual = nil
    end
    
    def insertar(valor)
        aux = Nodo.new(valor,nil, nil)
        if @cabeza == nil
            @cabeza = aux
            @actual = aux
            else
                aux1 = @actual
                @actual.next = aux
                @actual = aux
                @actual.ant = aux1
        end
    end
    
    def eliminar
        aux = @cabeza.next
        @cabeza = aux
        if @cabeza != nil
            @cabeza.ant = nil
        end  
    end
    
    def pop
        aux2 = @cabeza.value
        @cabeza = @cabeza.next
        if @cabeza != nil
            @cabeza.ant = nil
        end
        if aux2.instance_of?Bibliog
            aux2.to_s
        else
            aux2.to_s
        end
    end
    
    def each
        aux = @cabeza
        while aux.next!=nil
            yield aux.value
            aux=aux.next
        end
        yield aux.value
    end
end