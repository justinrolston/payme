require_relative 'func_spec_helper'

describe 'The Payme App' do
  include Capybara::DSL

  Capybara.default_driver = :poltergeist

  Capybara.app = Sinatra::Application.new

  it 'test' do
    visit '/form'
    find('input#message').set "Justin"
    find('input#submit').click
    expect(page.text).to eq "You said 'Justin'"
  end

end
