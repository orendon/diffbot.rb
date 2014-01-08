module Diffbot

  class TokenNotFound < StandardError; end

  # Common validations for {Diffbot}
  module Validatable

    # Validates Diffbot token is configured
    #
    # @returns [Boolean]
    def diffbot_token_exists?
      Diffbot.token
    end
  end
end
