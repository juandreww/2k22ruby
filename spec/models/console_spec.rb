require 'rails_helper'

RSpec.describe Console do
    describe 'validations' do
        describe 'name' do
            it 'must be present' do
                console = described_class.new(manufacturer: 'Nintendo')
                expect(console).to_not be_valid
                console.name = 'Wii'
                expect(console).to be_valid
            end
        end

        describe 'manufacturer' do
            it 'must be present' do
                console = described_class.new(name: 'Wii')
                expect(console).to_not be_valid
                console.manufacturer = 'Nintendo'
                expect(console).to be_valid
            end
        end
    end
end