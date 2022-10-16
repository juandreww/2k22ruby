require 'rails_helper.rb'

RSpec.feature 'Creating Posts' do
    scenario 'can create job' do
        # visit root route
        visit '/post'
        # click create post link
        click_link 'Create Post'
        # fill in the form with needed information (title and caption)
        fill_in 'Title', with: 'title'
        fill_in 'Caption', with: 'caption'
        # click submit form
        click_button 'Create Post'
        expect(page).to have_content('title')
        expect(page).to have_content('caption')
        # expect page to have the content we submitted
    end
end