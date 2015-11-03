class Bibliog
    attr_reader :autores, :titulo, :serie, :editorial, :edicion, :mes, :anno, :isbn
    
    def initialize(a, t, e, ed, mes, anno, isbn, s="none")
        @autores = a
        @titulo = t
        @serie = s
        @editorial = e
        @edicion = ed
        @mes = mes
        @anno = anno
        @isbn = isbn
    end
    
    def get_autores
        size = @autores.length
        i = 0
        while i < (size-1)
            cadena = "#{cadena}"+"#{@autores[i]}, "
            i = i+1
        end
        cadena = "#{cadena}"+"#{@autores[i]}"
    end
    
    def get_titulo
        "#{@titulo}"
    end
    
    def get_serie
        "#{@serie}"
    end
end
