require_relative '../server.rb'  # <-- your sinatra app
require 'rspec'
require 'rack/test'

describe 'The osquery TLS app' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "returns a status" do
    get '/status'
    expect(last_response.body).to match(/running/)
  end
end
