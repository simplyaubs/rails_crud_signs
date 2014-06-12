require 'spec_helper'

feature 'CRUD signs' do
  scenario 'User can create a list of signs' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a sign'
    fill_in 'Sign', with: 'Stop'
    fill_in 'Color', with: 'Red'
    click_on 'Add sign'
    expect(page).to have_content 'Stop'
    expect(page).to have_content 'Red'
  end
end