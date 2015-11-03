require 'spec_helper'
require 'bibliografia/bibliog'

describe Bibliog do
    before :all do
        @b1 = Bibliog.new(['Dave Thomas','Andy Hunt',' Chad Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide
')
    end
    describe "# almacenamiento de autores" do
        it "Debe existir uno o mas autores" do
             @b1.autores.should eq(['Dave Thomas', 'Andy Hunt',' Chad Fowler'])
        end
    end
    describe "# almacenamiento de titulo" do
        it "Debe existir un titulo" do
             @b1.titulo.should eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide
')
        end
    end
end