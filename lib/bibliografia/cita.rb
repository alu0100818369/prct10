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
        if(b.autores.length>1)
            while(i<b.autores.length-2)
                nombre = "#{nombre}"+"#{b.apellidos[i]}, "+"#{b.autores[i][0]}., "
                i=i+1
            end
            nombre = "#{nombre}"+"#{b.apellidos[i]}, "+"#{b.autores[i][0]}. & "
            i = i+1
        end
        nombre = "#{nombre}"+"#{b.apellidos[i]}, "+"#{b.autores[i][0]}."
    end
    
    def insertar(b)
        @l.insertar(b)
        @lo=@l.sort
    end
    
    def mostrar 
        size = @lo.length
        i=0
        while(i<size)
            cadena = "#{nombre(@lo[i])}\n   "
            cadena = "#{cadena}"+"#{@lo[i].get_titulo}\n   "
            cadena = "#{cadena}"+"(#{@lo[i].get_serie})\n   "
            cadena = "#{cadena}"+"#{@lo[i].get_editorial}; #{@lo[i].get_edicion} edition (#{@lo[i].get_fecha})\n   "
            cadena = "#{cadena}"+"#{@lo[i].get_isbn}\n"
            i = i+1
        end
        cadena = cadena[0..-2]
    end
        
end