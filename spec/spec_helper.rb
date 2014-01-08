require 'diffbot_api'
require 'rspec'
require 'vcr'

DIFFBOT_TEST_TOKEN = "acbdefghijklmnopqrstuvwxyz"

RSpec.configure do |c|
  # in RSpec 3 this will no longer be necessary
  c.treat_symbols_as_metadata_keys_with_true_values = true
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
end
