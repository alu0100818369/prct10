require 'spec_helper'
require 'bibliografia/bibliog'
require 'bibliografia/lista'
require 'bibliografia/cita'

describe Bibliog do
    before :all do
        @b1 = Bibliog.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'], 'The Facets of Ruby')
        @b2 = Bibliog.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'])
        @b3 = Bibliog.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Titulo2', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'], 'The Facets of Ruby')
        @b4 = Bibliog.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Titulo2', 'Editorial2', 4, 'July 7', 2013, ['9781937785499', '1937785491'], 'The Facets of Ruby')
    end
    describe "# almacenamiento de autores" do
        it "Debe existir uno o mas autores" do
             #expect(@b1.autores).to eq(['Dave Thomas', 'Andy Hunt','Chad Fowler'])
        end
    end
    describe "# almacenamiento de titulo" do
        it "Debe existir un titulo" do
             expect(@b1.titulo).to eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
        end
    end
    describe "# almacenamiento de serie" do
        it "Debe existir una serie" do
             expect(@b1.serie).to eq('The Facets of Ruby')
        end
        it "No debe existir una serie" do
             expect(@b2.serie).to eq('none')
        end
    end
    describe "# almacenamiento de editorial" do
        it "Debe existir una editorial" do
             expect(@b1.editorial).to eq('Pragmatic Bookshelf')
        end
    end
    describe "# almacenamiento de edicion" do
        it "Debe existir un numero de edicion" do
             expect(@b1.edicion).to eq(4)
        end
    end
    describe "# almacenamiento de fecha" do
        it "Debe existir un dia y un mes" do
             expect(@b1.mes).to eq('July 7')
        end
        it "Debe existir un año" do
             expect(@b1.anno).to eq(2013)
        end
    end
    describe "# almacenamiento de uno o mas ISBN" do
        it "Debe existir uno o mas ISBN" do
             expect(@b1.isbn).to eq(['9781937785499', '1937785491'])
        end
    end
    describe "# metodo para obtener los autores" do
        it "Debe existir un metodo para obtener la lista de autores" do
             expect(@b1.get_autores).to eq("Dave Thomas, Andy Hunt, Chad Fowler")
        end
    end
    describe "# metodo para obtener el titulo" do
        it "Debe existir un metodo para obtener el titulo" do
             expect(@b1.get_titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide")
        end
    end
    describe "# metodo para obtener la serie" do
        it "Debe existir un metodo para obtener la serie" do
             expect(@b1.get_serie).to eq("The Facets of Ruby")
        end
    end
    describe "# metodo para obtener la editorial" do
        it "Debe existir un metodo para obtener la editorial" do
             expect(@b1.get_editorial).to eq("Pragmatic Bookshelf")
        end
    end
    describe "# metodo para obtener el numero de edicion" do
        it "Debe existir un metodo para obtener el numero de edicion" do
             expect(@b1.get_edicion).to eq("4")
        end
    end
    describe "# metodo para obtener la fecha" do
        it "Debe existir unmetodo para obtener la fecha" do
             expect(@b1.get_fecha).to eq("July 7, 2013")
        end
    end
    describe "# metodo para obtener los ISBN" do
        it "Debe existir un metodo para obtener los ISBN" do
             expect(@b1.get_isbn).to eq("ISBN-13: 978-1937785499\nISBN-10: 1937785491")
        end
    end
    describe "# formateo de la referencia" do
        it "Debe existir un metodo que formatee la referencia" do
            expect(@b1.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler.\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide\n(The Facets of Ruby)\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nISBN-13: 978-1937785499\nISBN-10: 1937785491")
        end
    end
    describe "Probando comparable en bibliografia" do
        it "Comparando igualdad" do
            expect(@b1==@b3).to eq(false)
            expect(@b4==@b3).to eq(true)
        end
        it "Comparando mayor y menor" do
            expect(@b1<@b3).to eq(false)
            expect(@b1>@b3).to eq(true)
        end
    end
end

describe Nodo do
    before :all do
        @n = Nodo.new('a','b','c')
    end
    describe "Variables del nodo" do
        it "Debe existir un valor" do
            expect(@n.value).to eq ('a')
        end
        it "Debe existir un siguiente" do
            expect(@n.next).to eq ('b')
        end
        it "Debe existir un anterior" do
            expect(@n.ant).to eq('c')
        end
    end
        
end

describe Lista do
    before :each do
        @l = Lista.new
        @l1 = Lista.new
        @l2 = Lista.new
        @aux = 5
        @aux1 = 7
        @aux2 = 9
        @b1 = Bibliog.new(['Dave','Andy','Chad'], ['Thomas', 'Hunt', 'Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'], 'The Facets of Ruby')
        @b2 = Bibliog.new(['Scott'], ['Chacon'],'Pro Git 2009th Edition','Apress', 2009, 'August 27', 2009, ['9781430218333', '1430218339'], 'Pro')
        @b3 = Bibliog.new(['David', 'Yukihiro'], ['Flanagan', 'Matsumoto'], 'The Ruby Programming Language', 'O’Reilly Media', 1, 'February 4', 2008, ['0596516177', '9780596516178'])
        @b4 = Bibliog.new(['David', 'Dave', 'Bryan', 'Dan', 'Zach', 'Aslak'], ['Chelimsky', 'Astels', 'Helmkamp', 'North', 'Dennis', 'Hellesoy'], 'The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'Pragmatic Bookshelf', 1, 'December 25', 2010, ['1934356379', '9781934356371'], 'The Facets of Ruby')
        @b5 = Bibliog.new(['Richard'], ['E'], 'Silverman Git Pocket Guide', 'O’Reilly Media', 1, 'August 2', 2013, ['1449325866', '9781449325862'])
    end
    describe "Pruebas de la lista" do
        it "En la lista vacia la cabeza debe ser nil" do
            expect(@l1.cabeza).to eq(nil)
        end
        it "En la lista vacia actual debe ser nil" do
            expect(@l1.actual).to eq(nil)
        end
        it "Insertar un valor" do
            
        end
        it "Insertar un valor, eliminar un valor, extraer primer elemento, para lista doblemente enlazada" do
            @l.insertar(@aux)
            expect(@l.actual.value).to eq(5)
            expect(@l.actual.next).to eq(nil)
            expect(@l.actual.ant).to eq(nil)
            @l.insertar(@aux1)
            expect(@l.actual.ant.value).to eq(5)
            @l.eliminar
            expect(@l.cabeza.value).to eq(7)
            expect(@l.cabeza.ant).to eq(nil)
            @l.insertar(@aux2)
            expect(@l.pop).to eq("7")
        end
        it "Extraer primer elemento" do
            
        end
        it "mostrar bibliografia" do
            @l2.insertar(@b1)
            @l2.insertar(@b2)
            @l2.insertar(@b3)
            @l2.insertar(@b4)
            @l2.insertar(@b5)
            expect(@l2.pop).to eq("Dave Thomas, Andy Hunt, Chad Fowler.\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide\n(The Facets of Ruby)\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nISBN-13: 978-1937785499\nISBN-10: 1937785491")
            expect(@l2.pop).to eq("Scott Chacon.\nPro Git 2009th Edition\n(Pro)\nApress; 2009 edition (August 27, 2009)\nISBN-13: 978-1430218333\nISBN-10: 1430218339")
            expect(@l2.pop).to eq("David Flanagan, Yukihiro Matsumoto.\nThe Ruby Programming Language\n(none)\nO’Reilly Media; 1 edition (February 4, 2008)\nISBN-10: 0596516177\nISBN-13: 978-0596516178")
            expect(@l2.pop).to eq("David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy.\nThe RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends\n(The Facets of Ruby)\nPragmatic Bookshelf; 1 edition (December 25, 2010)\nISBN-10: 1934356379\nISBN-13: 978-1934356371")
            expect(@l2.pop).to eq("Richard E.\nSilverman Git Pocket Guide\n(none)\nO’Reilly Media; 1 edition (August 2, 2013)\nISBN-10: 1449325866\nISBN-13: 978-1449325862")
        end
        describe "Pruebas enumerable" do
            it "Prueba max/min " do
                @l2.insertar(@b1)
                @l2.insertar(@b2)
                @l2.insertar(@b3)
                 @l2.insertar(@b4)
                @l2.insertar(@b5)
                expect(@l2.min).to eq(@b2)
                expect(@l2.max).to eq(@b4)
            end
        end
    end
end

describe Libro do
    before :all do
        @lib = Libro.new(['Ana'], ['Glez'], 'Nueva vida', 'Dell', 3, 'Junio 8', 2012, ['1449325866', '9781449325862'], 'Libro de autosuperacion','Salud')
        @lib2 = Libro.new(['Ana'], ['Glez'], 'Otra vida', 'Dell', 3, 'Junio 8', 2012, ['1449325866', '9781449325862'], 'Libro de autosuperacion','Salud')
        @lib3 = Libro.new(['Ana'], ['Glez'], 'Nueva vida', 'Otra editorial', 3, 'Junio 8', 2012, ['1449325866', '9781449325862'], 'Libro de autosuperacion','Salud')
    end
    it "Comprobar si libro es instancia de Libro" do
        expect(@lib.instance_of?Libro).to eq(true)
    end
    it "Comprobar si libro es instancia de Bibliog" do
        expect(@lib.instance_of?Bibliog).to eq(false)
    end
    it "Comprobar si libro es instancia de Object" do
        expect(@lib.instance_of?Object).to eq(false)
    end
    it "Comprobar si libro es instancia de BasicObject" do
        expect(@lib.instance_of?BasicObject).to eq(false)
    end
    it "Comprobar si libro es un objeto Librot" do
        expect(@lib.is_a?Libro).to eq(true)
    end
    it "Comprobar si libro es un objeto Bibliog" do
        expect(@lib.is_a?Bibliog).to eq(true)
    end
    it "Comprobar si libro es un objeto Object" do
        expect(@lib.is_a?Object).to eq(true)
    end
    it "Comprobar si libro es un objeto BasicObject" do
        expect(@lib.is_a?BasicObject).to eq(true)
    end
    it "Comprobar igualdad" do
        expect(@lib==@lib2).to eq(false)
        expect(@lib==@lib3).to eq(true)
    end
end

describe Revista do
    before :all do
        @rev = Revista.new(['Juan'], ['Glez'], 'Curiosidades del baloncesto', 'Dell', 3, 'Junio 8', 2012, ['1449325866', '9781449325862'], 'Revista: DeportesdeHoy','Deporte')
        @rev2 = Revista.new(['Juan'], ['Glez'], 'Curiosidades del futbol', 'Dell', 3, 'Junio 8', 2012, ['1449325866', '9781449325862'], 'Revista: DeportesdeHoy','Deporte')
        @rev3 = Revista.new(['Juan'], ['Glez'], 'Curiosidades del baloncesto', 'otra', 3, 'Junio 8', 2012, ['1449325866', '9781449325862'], 'Revista: DeportesdeHoy','Deporte')
    end
    it "Comprobar si revista es instancia de Revista" do
        expect(@rev.instance_of?Revista).to eq(true)
    end
    it "Comprobar si revista es instancia de Bibliog" do
        expect(@rev.instance_of?Bibliog).to eq(false)
    end
    it "Comprobar si revista es instancia de Object" do
        expect(@rev.instance_of?Object).to eq(false)
    end
    it "Comprobar si revista es instancia de BasicObject" do
        expect(@rev.instance_of?BasicObject).to eq(false)
    end
    it "Comprobar si revista es un objeto Revista" do
        expect(@rev.is_a?Revista).to eq(true)
    end
    it "Comprobar si revista es un objeto Bibliog" do
        expect(@rev.is_a?Bibliog).to eq(true)
    end
    it "Comprobar si revista es un objeto Object" do
        expect(@rev.is_a?Object).to eq(true)
    end
    it "Comprobar si revista es un objeto BasicObject" do
        expect(@rev.is_a?BasicObject).to eq(true)
    end
    it "Comprobar igualdad" do
        expect(@rev==@rev2).to eq(false)
        expect(@rev==@rev3).to eq(true)
        expect(@rev>@rev2).to eq(true)
    end
end

describe Electronica do
    before :all do
        @elec = Electronica.new(['Maria'], ['Glez'], 'Los mejores editores de texto', 'Dell', 3, 'Junio 8', 2012, ['1449325866', '9781449325862'], 'http://www.maria.com','Informatica')
        @elec1 = Electronica.new(['Maria'], ['Glez'], 'Los mejores editores de texto2', 'Dell', 3, 'Junio 8', 2012, ['1449325866', '9781449325862'], 'http://www.maria.com','Informatica')
        @elec2 = Electronica.new(['Maria'], ['Glez'], 'Los mejores editores de texto', 'otra', 3, 'Junio 8', 2012, ['1449325866', '9781449325862'], 'http://www.maria.com','Informatica')
    end
    it "Comprobar si electronica es instancia de Electronica" do
        expect(@elec.instance_of?Electronica).to eq(true)
    end
    it "Comprobar si electronica es instancia de Bibliog" do
        expect(@elec.instance_of?Bibliog).to eq(false)
    end
    it "Comprobar si electronica es instancia de Object" do
        expect(@elec.instance_of?Object).to eq(false)
    end
    it "Comprobar si electronica es instancia de BasicObject" do
        expect(@elec.instance_of?BasicObject).to eq(false)
    end
    it "Comprobar si electronica es un objeto Electronica" do
        expect(@elec.is_a?Electronica).to eq(true)
    end
    it "Comprobar si electronica es un objeto Bibliog" do
        expect(@elec.is_a?Bibliog).to eq (true)
    end
    it "Comprobar si electronica es un objeto Object" do
        expect(@elec.is_a?Object).to eq(true)
    end
    it "Comprobar si electronica es un objeto BasicObject" do
        expect(@elec.is_a?BasicObject).to eq(true)
    end
    it "Prueba guard " do
        expect(@elec.class).to eq(Electronica)
    end
    it "Prueba igualdad" do
        expect(@elec==@elec1).to eq(false)
        expect(@elec==@elec2).to eq(true)
    end
end
