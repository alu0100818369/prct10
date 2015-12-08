require_relative 'bibliog'
require_relative 'lista'

class Cita
    attr_accessor :l, :lo
    def initialize
        @l=Lista.new
        @lo=Lista.new
    end
    def nombre(b)
        i = 0
        while(i<b.autores.length-1)
            nombre = "#{nombre}"+"#{b.apellidos[i]}, "+"#{b.autores[i][0]}., "
            i=i+1
        end
        nombre = "#{nombre}"+"#{b.apellidos[i]}, "+"#{b.autores[i][0]}."
    end
    
    def insertar(b)
        @l.insertar(b)
        @lo=@l.sort
    end
        
end