require 'test_helper'

class TestClient < Minitest::Test
  def setup
    @client = ICanHazDadJoke::Client.new
  end

  def test_fetch_joke_success
    # Mocking HTTParty response to simulate a successful API call
    response = Minitest::Mock.new
    response.expect :ok?, true
    response.expect :parsed_response, {'joke' => 'Why don’t skeletons fight each other? They don’t have the guts.'}

    HTTParty.stub :get, response do
      assert_equal 'Why don’t skeletons fight each other? They don’t have the guts.', @client.fetch_joke
    end

    response.verify
  end

  def test_fetch_joke_failure
    # Mocking HTTParty response to simulate a failed API call
    response = Minitest::Mock.new
    response.expect :ok?, false
    response.expect :code, 404

    HTTParty.stub :get, response do
      assert_output(/Failed to fetch a joke: 404/) do
        assert_nil @client.fetch_joke
      end
    end

    response.verify
  end
end
