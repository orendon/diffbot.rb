require 'diffbot_api/configurable'
require 'diffbot_api/base'
require 'diffbot_api/article'

module Diffbot

  # Client fot the Diffbot API
  class Client
    include Diffbot::Base

    def initialize
      validate_diffbot_token!
    end

    # Instantiate an Article from a URL
    #
    # @param url [String] Specify the target article url
    # @return [Diffbot::Article]
    # @see http://www.diffbot.com/products/automatic/article/
    # @example Fetch an article
    #   client = Diffbot::Client.new
    #   client.article "www.example.com/some-url"
    def article(url)
      Diffbot::Article.new(url)
    end
  end
end
