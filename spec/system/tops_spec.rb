require 'rails_helper'

describe 'Top page' do
  it 'shows greeting' do
    visit root_url
    expect(page).to have_content 'hello!'
  end
end
