require 'spec_helper'
require 'bibliografia/bibliog'

describe Bibliog do
    before :all do
        @b1 = Bibliog.new(['Dave Thomas','Andy Hunt',' Chad Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf','The Facets of Ruby')
        @b2 = Bibliog.new(['Dave Thomas','Andy Hunt',' Chad Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf')
    end
    describe "# almacenamiento de autores" do
        it "Debe existir uno o mas autores" do
             @b1.autores.should eq(['Dave Thomas', 'Andy Hunt',' Chad Fowler'])
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
end