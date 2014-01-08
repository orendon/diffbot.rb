require 'spec_helper'

describe Diffbot::Client do

  before do
    Diffbot.configure do |c|
      c.token = DIFFBOT_TEST_TOKEN
    end
  end

  describe ".article", :vcr do
    let(:client) { Diffbot::Client.new }

    it "build an article from his url" do
      expect(client.article("example.com")).to be_a Diffbot::Article
    end
  end

  describe "validations" do
    it "validates token existance" do
      Diffbot.stub(:token).and_return(nil)

      expect { Diffbot::Client.new }.to raise_exception Diffbot::TokenNotFound
    end
  end
end
