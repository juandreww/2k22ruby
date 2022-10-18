require 'rails_helper'

RSpec.describe 'Home features' do
    it 'displays the name of the app and links to AboutGame page' do
        visit('/home')
        expect(page).to have_content('Game Tracker')
        click_link('AboutGame')
        expect(current_path).to eql('/aboutgame')
        expect(page).to have_content('AboutGame')
    end
end