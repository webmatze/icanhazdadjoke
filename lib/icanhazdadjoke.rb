require 'httparty'
require_relative 'icanhazdadjoke/client'

module ICanHazDadJoke
  def self.fetch_joke
    Client.new.fetch_joke
  end
end
