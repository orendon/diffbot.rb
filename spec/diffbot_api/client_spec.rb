require 'spec_helper'

describe Diffbot::Client do
  let(:client) { Diffbot::Client.new }

  before do
    Diffbot.setup!
  end

  describe ".article" do
    it "build an article from his url" do
      expect(client.article("example.com")).to be_a(Diffbot::Article)
    end
  end
end
