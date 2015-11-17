require 'spec_helper'
require 'bibliografia/bibliog'
require 'bibliografia/lista'

describe Bibliog do
    before :all do
        @b1 = Bibliog.new(['Dave Thomas','Andy Hunt','Chad Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'], 'The Facets of Ruby')
        @b2 = Bibliog.new(['Dave Thomas','Andy Hunt','Chad Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'])
    end
    describe "# almacenamiento de autores" do
        it "Debe existir uno o mas autores" do
             @b1.autores.should eq(['Dave Thomas', 'Andy Hunt','Chad Fowler'])
        end
    end
    describe "# almacenamiento de titulo" do
        it "Debe existir un titulo" do
             @b1.titulo.should eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
        end
    end
    describe "# almacenamiento de serie" do
        it "Debe existir una serie" do
             @b1.serie.should eq('The Facets of Ruby')
        end
        it "No debe existir una serie" do
             @b2.serie.should eq('none')
        end
    end
    describe "# almacenamiento de editorial" do
        it "Debe existir una editorial" do
             @b1.editorial.should eq('Pragmatic Bookshelf')
        end
    end
    describe "# almacenamiento de edicion" do
        it "Debe existir un numero de edicion" do
             @b1.edicion.should eq(4)
        end
    end
    describe "# almacenamiento de fecha" do
        it "Debe existir un dia y un mes" do
             @b1.mes.should eq('July 7')
        end
        it "Debe existir un año" do
             @b1.anno.should eq(2013)
        end
    end
    describe "# almacenamiento de uno o mas ISBN" do
        it "Debe existir uno o mas ISBN" do
             @b1.isbn.should eq(['9781937785499', '1937785491'])
        end
    end
    describe "# metodo para obtener los autores" do
        it "Debe existir un metodo para obtener la lista de autores" do
             @b1.get_autores.should eq("Dave Thomas, Andy Hunt, Chad Fowler")
        end
    end
    describe "# metodo para obtener el titulo" do
        it "Debe existir un metodo para obtener el titulo" do
             @b1.get_titulo.should eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide")
        end
    end
    describe "# metodo para obtener la serie" do
        it "Debe existir un metodo para obtener la serie" do
             @b1.get_serie.should eq("The Facets of Ruby")
        end
    end
    describe "# metodo para obtener la editorial" do
        it "Debe existir un metodo para obtener la editorial" do
             @b1.get_editorial.should eq("Pragmatic Bookshelf")
        end
    end
    describe "# metodo para obtener el numero de edicion" do
        it "Debe existir un metodo para obtener el numero de edicion" do
             @b1.get_edicion.should eq("4")
        end
    end
    describe "# metodo para obtener la fecha" do
        it "Debe existir unmetodo para obtener la fecha" do
             @b1.get_fecha.should eq("July 7, 2013")
        end
    end
    describe "# metodo para obtener los ISBN" do
        it "Debe existir un metodo para obtener los ISBN" do
             @b1.get_isbn.should eq("ISBN-13: 978-1937785499\nISBN-10: 1937785491")
        end
    end
    describe "# formateo de la referencia" do
        it "Debe existir un metodo que formatee la referencia" do
            @b1.to_s.should eq("Dave Thomas, Andy Hunt, Chad Fowler.\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide\n(The Facets of Ruby)\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nISBN-13: 978-1937785499\nISBN-10: 1937785491")
        end
    end
end

describe Nodo do
    before :all do
        @n = Nodo.new('a','b','c')
    end
    describe "Variables del nodo" do
        it "Debe existir un valor" do
            @n.value.should eq ('a')
        end
        it "Debe existir un siguiente" do
            @n.next.should eq ('b')
        end
        it "Debe existir un anterior" do
            @n.ant.should eq('c')
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
        @b1 = Bibliog.new(['Dave Thomas','Andy Hunt','Chad Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7', 2013, ['9781937785499', '1937785491'], 'The Facets of Ruby')
        @b2 = Bibliog.new(['Scott Chacon'],'Pro Git 2009th Edition','Apress', 2009, 'August 27', 2009, ['9781430218333', '1430218339'], 'Pro')
        @b3 = Bibliog.new(['David Flanagan', 'Yukihiro Matsumoto'], 'The Ruby Programming Language', 'O’Reilly Media', 1, 'February 4', 2008, ['0596516177', '9780596516178'])
        @b4 = Bibliog.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'], 'The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'Pragmatic Bookshelf', 1, 'December 25', 2010, ['1934356379', '9781934356371'], 'The Facets of Ruby')
        @b5 = Bibliog.new(['Richard E'], 'Silverman Git Pocket Guide', 'O’Reilly Media', 1, 'August 2', 2013, ['1449325866', '9781449325862'])
    end
    describe "Pruebas de la lista" do
        it "En la lista vacia la cabeza debe ser nil" do
            @l1.cabeza.should eq(nil)
        end
        it "En la lista vacia actual debe ser nil" do
            @l1.actual.should eq(nil)
        end
        it "Insertar un valor" do
            
        end
        it "Insertar un valor, eliminar un valor, extraer primer elemento, para lista doblemente enlazada" do
            @l.insertar(@aux)
            @l.actual.value.should eq(5)
            @l.actual.next.should eq(nil)
            @l.actual.ant.should eq(nil)
            @l.insertar(@aux1)
            @l.actual.ant.value.should eq(5)
            @l.eliminar
            @l.cabeza.value.should eq(7)
            @l.cabeza.ant.should eq(nil)
            @l.insertar(@aux2)
            @l.pop.should eq("7")
        end
        it "Extraer primer elemento" do
            
        end
        it "mostrar bibliografia" do
            @l2.insertar(@b1)
            @l2.insertar(@b2)
            @l2.insertar(@b3)
            @l2.insertar(@b4)
            @l2.insertar(@b5)
            @l2.pop.should eq("Dave Thomas, Andy Hunt, Chad Fowler.\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide\n(The Facets of Ruby)\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nISBN-13: 978-1937785499\nISBN-10: 1937785491")
            @l2.pop.should eq("Scott Chacon.\nPro Git 2009th Edition\n(Pro)\nApress; 2009 edition (August 27, 2009)\nISBN-13: 978-1430218333\nISBN-10: 1430218339")
            @l2.pop.should eq("David Flanagan, Yukihiro Matsumoto.\nThe Ruby Programming Language\n(none)\nO’Reilly Media; 1 edition (February 4, 2008)\nISBN-10: 0596516177\nISBN-13: 978-0596516178")
            @l2.pop.should eq("David Chelimsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy.\nThe RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends\n(The Facets of Ruby)\nPragmatic Bookshelf; 1 edition (December 25, 2010)\nISBN-10: 1934356379\nISBN-13: 978-1934356371")
            @l2.pop.should eq("Richard E.\nSilverman Git Pocket Guide\n(none)\nO’Reilly Media; 1 edition (August 2, 2013)\nISBN-10: 1449325866\nISBN-13: 978-1449325862")
        end
    end
end

describe Libro do
    before :all do
        @lib = Libro.new
    end
    it "Comprobar si libro es instancia de Libro" do
        (@lib.instance_of?Libro).should eq(true)
    end
    it "Comprobar si libro es instancia de Bibliog" do
        (@lib.instance_of?Bibliog).should eq(false)
    end
    it "Comprobar si libro es instancia de Object" do
        (@lib.instance_of?Object).should eq(false)
    end
    it "Comprobar si libro es instancia de BasicObject" do
        (@lib.instance_of?BasicObject).should eq(false)
    end
end