require 'rails_helper'

RSpec.describe 'Consoles requests' do
    before do
        Console.create(name: 'NES', manufacturer: 'Nintendo')
        Console.create(name: 'SNES', manufacturer: 'Nintendo')
        Console.create(name: 'Wii', manufacturer: 'Nintendo')
        Console.create(name: 'Genesis', manufacturer: 'Sega')
        Console.create(name: 'Xbox', manufacturer: 'Microsoft')
        Console.create(name: 'Switch', manufacturer: 'Nintendo')
        Console.create(name: 'PS1', manufacturer: 'Sony')
        Console.create(name: 'PS2', manufacturer: 'Sony')
    end

    describe 'GET /consoles' do
        # let(:json) { JSON.parse(response.body) }
        it 'returns an array of video games consoles' do
            get('/consoles')
            expect(response_json['consoles']).to contain_exactly(
                'NES',
                'SNES',
                'Wii',
                'Genesis',
                'Xbox',
                'Switch',
                'PS1',
                'PS2'
            )

            # expect(response_json['consoles']).to include(
            #     'NES',
            #     'SNES',
            # )
        end

        it 'supports specifying consoles for a specific manufacturer' do
            get('/consoles', params: { manufacturer: 'Nintendo' })
            expect(response_json['consoles']).to contain_exactly(
                'NES',
                'SNES',
                'Wii',
                'Switch'
            )

            # get('/consoles', params: { manufacturer: 'Sega' })
            # expect(json['consoles']).to contain_exactly(
            #     'Genesis'
            # )
        end
    end
end