require 'rails_helper'

RSpec.describe 'Consoles requests' do
    before do
        consoles = [
            { name: 'NES', manufacturer: 'Nintendo' },
            { name: 'SNES', manufacturer: 'Nintendo' },
            { name: 'Wii', manufacturer: 'Nintendo' },
            { name: 'Genesis', manufacturer: 'Sega' },
            { name: 'Xbox', manufacturer: 'Microsoft' },
            { name: 'Switch', manufacturer: 'Nintendo' },
            { name: 'PS1', manufacturer: 'Sony' },
            { name: 'PS2', manufacturer: 'Sony' },
        ]
    end
    # describe 'GET /consoles' do
    #     # let(:json) { JSON.parse(response.body) }
    #     it 'returns an array of video games consoles' do
    #         get('/consoles')
    #         expect(response_json['consoles']).to contain_exactly(
    #             'NES',
    #             'SNES',
    #             'Wii',
    #             'Genesis',
    #             'Xbox',
    #             'Switch',
    #             'PS1',
    #             'PS2'
    #         )

    #         # expect(response_json['consoles']).to include(
    #         #     'NES',
    #         #     'SNES',
    #         # )
    #     end

    #     it 'supports specifying consoles for a specific manufacturer' do
    #         get('/consoles', params: { manufacturer: 'Nintendo' })
    #         expect(response_json['consoles']).to contain_exactly(
    #             'NES',
    #             'SNES',
    #             'Wii',
    #             'Switch'
    #         )

    #         # get('/consoles', params: { manufacturer: 'Sega' })
    #         # expect(json['consoles']).to contain_exactly(
    #         #     'Genesis'
    #         # )
    #     end
    # end
end