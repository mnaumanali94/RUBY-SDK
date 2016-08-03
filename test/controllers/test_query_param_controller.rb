# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class QueryParamControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.query_param
  end

  # Todo: Add description for test test_simple_query
  def test_simple_query()
    # Parameters for the API call
    boolean = true
    number = 4
    string = 'TestString'

    # dictionary for optional query parameters
    optional_query_parameters = {}

    # Perform the API call through the SDK function
    result = self.class.controller.simple_query(boolean, number, string, optional_query_parameters)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_no_params
  def test_no_params()

    # Perform the API call through the SDK function
    result = self.class.controller.no_params()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_string_param
  def test_string_param()
    # Parameters for the API call
    string = 'l;asd;asdwe[2304&&;\'.d??\\a\\\\\\;sd//'

    # Perform the API call through the SDK function
    result = self.class.controller.string_param(string)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_url_param
  def test_url_param()
    # Parameters for the API call
    url = 'https://www.shahidisawesome.com/and/also/a/narcissist?thisis=aparameter&another=one'

    # Perform the API call through the SDK function
    result = self.class.controller.url_param(url)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_multiple_params
  def test_multiple_params()
    # Parameters for the API call
    number = 123412312
    precision = 1112.34
    string = '""test./;";12&&3asl"";"qw1&34"///..//.'
    url = 'http://www.abc.com/test?a=b&c="http://lolol.com?param=no&another=lol"'

    # Perform the API call through the SDK function
    result = self.class.controller.multiple_params(number, precision, string, url)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_number_array
  def test_number_array()
    # Parameters for the API call
    integers = JSON.parse('[1,2,3,4,5]')

    # Perform the API call through the SDK function
    result = self.class.controller.number_array(integers)

    # Test response code
    assert([*200..208].include? @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_string_array
  def test_string_array()
    # Parameters for the API call
    strings = JSON.parse('["abc", "def"]')

    # Perform the API call through the SDK function
    result = self.class.controller.string_array(strings)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_string_enum_array
  def test_string_enum_array()
    # Parameters for the API call
    days = JSON.parse('["Tuesday", "Saturday", "Wednesday", "Monday", "Sunday"]')

    # Perform the API call through the SDK function
    result = self.class.controller.string_enum_array(days)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_integer_enum_array
  def test_integer_enum_array()
    # Parameters for the API call
    suites = JSON.parse('[1, 3, 4, 2, 3]')

    # Perform the API call through the SDK function
    result = self.class.controller.integer_enum_array(suites)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"passed":true}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

end
