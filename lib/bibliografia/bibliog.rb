class Bibliog
    attr_reader :autores, :titulo, :serie, :editorial, :edicion, :mes, :anno
    
    def initialize(a, t, e, ed, mes, anno, s="none")
        @autores = a
        @titulo = t
        @serie = s
        @editorial = e
        @edicion = ed
        @mes = mes
        @anno = anno
    end
    
end
