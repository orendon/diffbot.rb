require 'spec_helper'

describe Diffbot::Configurable do

    before do
      Diffbot.configure do |config|
        config.token = DIFFBOT_TEST_TOKEN
      end
    end

    it "loads default configuration" do
      expect(Diffbot.api_endpoint).to eq "http://api.diffbot.com"
      expect(Diffbot.api_version).to eq "v2"
    end

    it "overrides module configuration" do
      expect(Diffbot.token).to eq DIFFBOT_TEST_TOKEN
    end
end
