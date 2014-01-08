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
      extract_article
    end

    # Get article fields
    #
    # @return [String]
    def [](key)
      @response[key]
    end

    private

    # Extracts article data through Diffbot API
    def extract_article
      api_response = request.get article_endpoint, token: Diffbot.token, url: @url
      @response = JSON.parse(api_response.body)
    end

    # Builds the Diffbot API url for article resources
    #
    # @return [String]
    def article_endpoint
      File.join api_url, "article"
    end
  end
end
