require 'diffbot_api/version'
require 'diffbot_api/client'

# Ruby client the Diffbot API
module Diffbot
  class << self
    include Diffbot::Configurable
  end
end

Diffbot.setup!
