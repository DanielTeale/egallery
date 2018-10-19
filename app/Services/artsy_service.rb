class Foo
  include HTTParty
end

class ArtsyService
  attr_reader :xapp_token
  def initialize
    api_id = Rails.application.credentials.API_ID
    api_secret = Rails.application.credentials.API_SECRET
    api_url = URI.parse 'https://api.artsy.net/api/tokens/xapp_token'
    response = Foo.post(api_url, body: {client_id: "#{api_id}", client_secret: "#{api_secret}"})
    @xapp_token = JSON.parse(response.body)['token']
  end

  def search_artist(artist)
    uri = "https://api.artsy.net/api/artists/#{artist}"
    Foo.headers('X-Xapp-Token': @xapp_token)
    Foo.get(uri)
  end
end