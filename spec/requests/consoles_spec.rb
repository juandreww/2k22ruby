require 'rails_helper'

RSpec.describe 'Consoles requests' do
    describe 'GET /consoles' do
        it 'returns an array of video games consoles' do
            json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly(
                'NES',
                'SNES',
                'Wii',
                'Genesis',
                'Xbox',
                'Switch',
                'PS1',
                'PS2'
            )
        end
    end
end