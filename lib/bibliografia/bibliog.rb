class Bibliog
    attr_reader :autores, :titulo, :serie, :editorial, :edicion
    
    def initialize(a, t, e, ed, s="none")
        @autores = a
        @titulo = t
        @serie = s
        @editorial = e
        @edicion = ed
    end
    
end
