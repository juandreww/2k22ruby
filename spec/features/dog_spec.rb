require 'spec_helper'
require_relative '../../app/models/dog'
require_relative '../../app/controllers/dog_controller'

describe Dog do
    describe '#bark' do
        it 'returns the "Woof!"' do
            dog = Dog.new
            expect(dog.bark).to eql('Woof!')
        end
    end
end

describe DogController do
end