require 'rails_helper'

RSpec.describe 'Consoles features' do
    describe 'viewing the index' do
        it 'list all of the consoles' do
            # 1. Create your test data
            Console.create!(name: 'Switch', manufacturer: 'Nintendo')
            Console.create!(name: 'Wii', manufacturer: 'Nintendo')

            # 2. interact with the app
            visit('/')
            click_link('Consoles')

            # 3. expect something to happen
            expect(page).to have_content('Nintendo Switch')
            expect(page).to have_content('Nintendo Wii')
    end
end