require 'spec_helper'

describe Diffbot::Article do
  before do
    Diffbot.configure do |c|
      c.token = DIFFBOT_TEST_TOKEN
    end
  end

  describe "validations" do
    it "validates token existance" do
      Diffbot.stub(:token).and_return(nil)

      expect { Diffbot::Article.new("example.com") }.to raise_error Diffbot::TokenNotFound
    end
  end

  describe "extracts xconomy article", :vcr do
    XCONOMY = "http://www.xconomy.com/san-francisco/2012/07/25/diffbot-is-using-computer-vision-to-reinvent-the-semantic-web/"
    let(:article) { Diffbot::Article.new(XCONOMY) }

    it "fetches article title" do
      expect(article['title']).to eq "Diffbot Is Using Computer Vision to Reinvent the Semantic Web"
    end

    it "fetches article author" do
      expect(article['author']).to eq "Wade Roush"
    end

    it "fetches article date" do
      expect(article['date']).to match /Wed, 25 Jul 2012/
    end

  end
end
