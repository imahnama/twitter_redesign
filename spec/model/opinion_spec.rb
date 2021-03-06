require 'rails_helper'

RSpec.feature 'Opinion', type: :feature do
  before :each do
    @user = User.create(FullName: 'Rahma', Username: 'nama')
    @user = User.create(FullName: 'Phylis', Username: 'chumbaa')
    Opinion.create(AuthorId: @user.id, Text: 'Hello Universe!')
  end

  it 'Should create an opinion' do
    visit root_path
    fill_in 'Username', with: 'nama'
    click_button 'Log In'
    fill_in 'opinion[Text]', with: 'Hello friends'
    click_button 'Post Opinion'
    expect(page).to have_content('HOME')
  end
end
