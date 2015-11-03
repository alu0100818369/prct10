require 'spec_helper'
require 'bibliografia/bibliog'

describe Bibliog do
    before :all do
        @b1 = Bibliog.new(['Dave Thomas','Andy Hunt',' Chad Fowler'])
    end
    describe "# almacenamiento de autores" do
        it "Debe existir uno o mas autores" do
             @b1.autores.should eq(['Dave Thomas', 'Andy Hunt',' Chad Fowler'])
        end
    end
end