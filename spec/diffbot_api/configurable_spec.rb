require 'spec_helper'

describe Diffbot::Configurable do

    before do
      Diffbot.setup!
      Diffbot.configure do |config|
        config.token = "acbdefghijklmnopqrstuvwxyz"
      end
    end

    it "loads default configuration" do
      expect(Diffbot.api_endpoint).to eq "http://api.diffbot.com"
      expect(Diffbot.api_version).to eq "2"
    end

    it "overrides module configuration" do
      expect(Diffbot.token).to eq "acbdefghijklmnopqrstuvwxyz"
    end
end
