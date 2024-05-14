require 'httparty'

module ICanHazDadJoke
  class Client
    BASE_URI = 'https://icanhazdadjoke.com/'

    def fetch_joke
      response = HTTParty.get(BASE_URI, headers: { 'Accept' => 'application/json' })
      if response.ok?
        response.parsed_response['joke']
      else
        puts "Failed to fetch a joke: #{response.code}"
        nil
      end
    end
  end
end
