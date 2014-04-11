require 'bundler/setup'
Bundler.require(:test)

require 'vcr'

#SimpleCov.start if ENV['COVERAGE']

SPEC_DIR      = File.dirname(__FILE__)
TEST_DATA_DIR = File.join(SPEC_DIR, 'data')

def fixture_path(filename)
  File.join(TEST_DATA_DIR, filename)
end

require 'tasksync'

Dir[File.join(SPEC_DIR, 'support/**/*.rb')].each {|f| require f }

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true

  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
  # https://www.relishapp.com/vcr/vcr/v/2-1-1/docs/test-frameworks/usage-with-rspec-metadata
  c.configure_rspec_metadata!

end

RSpec.configure do |config|
  # https://www.relishapp.com/vcr/vcr/v/2-1-1/docs/test-frameworks/usage-with-rspec-metadata
  config.treat_symbols_as_metadata_keys_with_true_values = true


  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"
end

require 'support/matchers'
