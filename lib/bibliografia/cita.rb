require_relative 'bibliog'
require_relative 'lista'

class Cita
    attr_accessor :l
    def initialize
        @l=Lista.new
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
        @l.sort
    end
        
end