require 'spec_helper'

feature 'CRUD signs' do
  scenario 'User can see welcome on index page' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end