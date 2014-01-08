require 'faraday'
require 'json'

module Diffbot

  # Token Not Found exception
  class TokenNotFound < StandardError; end

  # Base common class for {Diffbot} resources
  module Base

    private

    # Creates Faraday instance from the given url
    #
    # @returns [Faraday]
    def request
      Faraday.new url: url
    end

    # Builds the full API URL (endpoint + version)
    #
    # @return [String]
    def api_url
      File.join Diffbot.api_endpoint, Diffbot.api_version
    end

    # Validates Diffbot token is configured
    # Raise an exception when Diffbot token is not configured
    #
    # @returns [TokenNotFound]
    def validate_diffbot_token!
      raise TokenNotFound unless Diffbot.token
    end
  end
end
