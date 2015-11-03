class Bibliog
    attr_reader :autores, :titulo, :serie, :editorial
    
    def initialize(a, t, e, s="none")
        @autores = a
        @titulo = t
        @serie = s
        @editorial = e
    end
    
end
