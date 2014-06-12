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

  scenario 'User can update a sign' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a sign'
    fill_in 'Sign', with: 'Stop'
    fill_in 'Color', with: 'Red'
    click_on 'Add sign'
    expect(page).to have_content 'Stop'
    expect(page).to have_content 'Red'
    click_on 'Stop'
    expect(page).to have_content 'Stop'
    expect(page).to have_content 'Red'
    click_on 'Edit'
    fill_in 'Sign', with: 'Yield'
    fill_in 'Color', with: 'Yellow'
    click_on 'Update sign'
    expect(page).to have_content 'Yield'
    expect(page).to have_content 'Yellow'
    expect(page).to_not have_content 'Stop'
    expect(page).to_not have_content 'Red'
  end

  scenario 'User can delete a sign' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a sign'
    fill_in 'Sign', with: 'Stop'
    fill_in 'Color', with: 'Red'
    click_on 'Add sign'
    expect(page).to have_content 'Stop'
    expect(page).to have_content 'Red'
    click_on 'Stop'
    expect(page).to have_content 'Stop'
    expect(page).to have_content 'Red'
    click_on 'Delete'
    expect(page).to_not have_content 'Stop'
    expect(page).to_not have_content 'Red'
  end
end