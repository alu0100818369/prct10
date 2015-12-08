require_relative 'bibliog'

class Cita
    def nombre(b)
        i = 0
        while(i<b.autores.length-1)
            nombre = "#{nombre}"+"#{b.apellidos[i]}, "+"#{b.autores[i][0]}.,"
            i=i+1
        end
        nombre = "#{nombre}"+"#{b.apellidos[i]}, "+"#{b.autores[i][0]}."
    end
end