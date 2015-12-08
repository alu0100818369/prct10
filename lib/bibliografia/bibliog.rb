class Bibliog
    attr_reader :autores, :titulo, :serie, :editorial, :edicion, :mes, :anno, :isbn, :apellidos
    include Comparable
    
    def initialize(a, ap, t, e, ed, mes, anno, isbn, s="none")
        @autores = a
        @apellidos = ap
        @titulo = t
        @serie = s
        @editorial = e
        @edicion = ed
        @mes = mes
        @anno = anno
        @isbn = isbn
    end
    
    def <=>(other)
        return nil unless other.is_a? Bibliog
        if(@apellidos!=other.apellidos)
            @apellidos <=> other.apellidos
        else
            if(@anno!=other.anno)
                @anno<=>other.anno
            else
               @titulo<=>other.titulo
            end
        end
    end
    
    def ==(other)
        #return nil unless other.is_a? Bibliog
        @titulo == other.titulo
    end
    
    def get_autores
        size = @autores.length
        i = 0
        j = 0
        while i < (size-1)
            cadena = "#{cadena}"+"#{@autores[i]} #{@apellidos[i]}, "
            i = i+1
            j = j+1
        end
        cadena = "#{cadena}"+"#{@autores[i]} #{@apellidos[i]}"
    end
    
    def get_titulo
        "#{@titulo}"
    end
    
    def get_serie
        "#{@serie}"
    end
    
    def get_editorial
        "#{@editorial}"
    end
    
    def get_edicion
        "#{@edicion}"
    end
    
    def get_fecha
        "#{@mes}, #{@anno}"
    end
    
    def get_isbn
        size = @isbn.length
        
        a = @isbn[0].length
        
        cadena = "ISBN-#{a}: "
        if a > 10
            cadena = "#{cadena}"+"#{@isbn[0][-a..-11]}"+"-"+"#{@isbn[0][-10..-1]}"
        else
            cadena = "#{cadena}"+"#{@isbn[0]}"
        end
        
        i = 1
        while i < size
            a = @isbn[i].length
            
            cadena = "#{cadena}"+"\n   ISBN-#{a}: "
            if a > 10
                cadena = "#{cadena}"+"#{@isbn[i][-a..-11]}"+"-"+"#{@isbn[i][-10..-1]}"
            else
                cadena = "#{cadena}"+"#{@isbn[i]}"
            end
            i = i+1
        end
        cadena
    end
    
    def to_s
        cadena = "#{get_autores}.\n"
        cadena = "#{cadena}"+"#{get_titulo}\n"
        cadena = "#{cadena}"+"(#{get_serie})\n"
        cadena = "#{cadena}"+"#{get_editorial}; #{get_edicion} edition (#{get_fecha})\n"
        cadena = "#{cadena}"+"#{get_isbn}"
    end
end


class Libro < Bibliog
    def initialize(a, ap, t, e, ed, mes, anno, isbn, r, s="none")
        super(a, ap, t, e, ed,mes, anno, isbn, s)
        @resumen = r
    end
end

class Revista < Bibliog
    def initialize(a, ap, t, e, ed, mes, anno, isbn, n, s="none")
        super(a, ap, t, e, ed,mes, anno, isbn, s)
        @nom_revista = n
        token1 = @titulo.split
        @titulo = ''
        i=0
        while(i<token1.length-1)
            @titulo ="#{@titulo}"+ "#{token1[i].capitalize} "
            i = i+1
        end
        @titulo ="#{@titulo}"+ "#{token1[i].capitalize}"
    end
end

class Electronica < Bibliog
    def initialize(a, ap, t, e, ed, mes, anno, isbn, u, s="none")
        super(a, ap, t, e, ed,mes, anno, isbn, s)
        @url = u
    end
end