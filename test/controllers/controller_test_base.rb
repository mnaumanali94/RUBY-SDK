# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require 'json'
require 'test/unit'
require 'tester.rb'
require_relative '../test_helper.rb'
require_relative '../http_response_catcher.rb'

class ControllerTestBase < Test::Unit::TestCase
  include Tester

  class << self
    attr_accessor :controller
  end

  # Called only once for a test class before any test has executed.
  def self.startup		
    @@api_client = TesterClient.new
    @@request_timeout = 60
    @@assert_precision = 0.1
    # Set Configuration parameters for test execution
    Configuration.base_uri = 'http://apimatic.hopto.org:3000'
  end

  # Called once before every test case.
  def setup
    @response_catcher = HttpResponseCatcher.new
    self.class.controller.http_call_back = @response_catcher
  end
end

    