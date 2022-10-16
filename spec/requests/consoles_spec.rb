require 'rails_helper'

RSpec.describe 'Consoles requests' do
    describe 'GET /consoles' do
        let(:json) { JSON.parse(response.body) }
        it 'returns an array of video games consoles' do
            get('/consoles')
            # expect(json['consoles']).to contain_exactly(
            #     'NES',
            #     'SNES',
            #     'Wii',
            #     'Genesis',
            #     'Xbox',
            #     'Switch',
            #     'PS1',
            #     'PS2'
            # )

            expect(json['consoles']).to include(
                'NES',
                'SNES',
            )
        end

        it 'supports specifying consoles for a specific manufacturer' do
            get('/consoles', params: { manufacturer: 'Nintendo' })
            expect(json['consoles']).to contain_exactly(
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