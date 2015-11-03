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
    
end
