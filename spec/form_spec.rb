require 'spec_helper'

describe 'The Payme App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "get /form" do
    get "/form"
    expect(last_response).to be_ok
  end

  it "post /form" do
    post '/form', params={message: "UnitTest"}
    expect(last_response).to be_ok
    expect(last_response.body).to eq("You said 'UnitTest'")
  end
end
