class Bibliog
    attr_reader :autores, :titulo, :serie
    
    def initialize(a, t, s="none")
        @autores = a
        @titulo = t
        @serie = s
    end
    
end
