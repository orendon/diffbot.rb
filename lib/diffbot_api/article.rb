module Diffbot

  # Class to parse a Diffbot article from a given URL
  class Article
    include Diffbot::Base

    # @!attribute url
    #   @return [String] Target URL for the given article
    attr_reader :url

    # Instantiate an Article from a URL
    #
    # @param url [String] Specify the target article url
    # @return [Article]
    # @see http://www.diffbot.com/products/automatic/article/
    # @example Create an Article
    #   article = Diffbot::Article.new("www.example.com/some-url")
    def initialize(url)
      validate_diffbot_token!

      @url = URI.parse(url)
    end
  end
end
