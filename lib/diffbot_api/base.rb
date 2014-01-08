module Diffbot

  # Token Not Found exception
  class TokenNotFound < StandardError; end

  # Base common class for {Diffbot} resources
  module Base

    # Validates Diffbot token is configured
    #
    # @returns [Boolean]
    def validate_diffbot_token!
      raise TokenNotFound unless Diffbot.token
    end
  end
end
