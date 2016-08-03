# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class ResponseTypesControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.response_types
  end

  # Todo: Add description for test test_get_long
  def test_get_long()

    # Perform the API call through the SDK function
    result = self.class.controller.get_long()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal('5147483647', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_model
  def test_get_model()

    # Perform the API call through the SDK function
    result = self.class.controller.get_model()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid":"123321","salary":20000,"department":"Software Development","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],"boss":{"name":"Zeeshan Ejaz","age":5147483647,"address":"I-9/1","uid":"241123"},"dependents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341"}]}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_get_string_enum_array
  def test_get_string_enum_array()

    # Perform the API call through the SDK function
    result = self.class.controller.get_string_enum_array()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('["Tuesday", "Saturday", "Wednesday", "Monday", "Sunday"]')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_string_enum
  def test_get_string_enum()

    # Perform the API call through the SDK function
    result = self.class.controller.get_string_enum()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal('Monday', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_model_array
  def test_get_model_array()

    # Perform the API call through the SDK function
    result = self.class.controller.get_model_array()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('[{"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid":"123321","salary":20000,"department":"Software Development","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],"boss":{"name":"Zeeshan Ejaz","age":5147483647,"address":"I-9/1","uid":"241123"},"dependents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341"}]}, {"name":"Shahid Khaliq","age":5147483645,"address":"H # 531, S # 20","uid":"123321","salary":20000,"department":"Software Development","joiningDay":"Saturday","workingDays":["Monday","Tuesday","Friday"],"boss":{"name":"Zeeshan Ejaz","age":5147483647,"address":"I-9/1","uid":"241123"},"dependents":[{"name":"Future Wife","age":5147483649,"address":"H # 531, S # 20","uid":"123412"},{"name":"Future Kid","age":5147483648,"address":"H # 531, S # 20","uid":"312341"}]}]')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_get_int_enum
  def test_get_int_enum()

    # Perform the API call through the SDK function
    result = self.class.controller.get_int_enum()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal('3', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_int_enum_array
  def test_get_int_enum_array()

    # Perform the API call through the SDK function
    result = self.class.controller.get_int_enum_array()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('[1, 3, 4, 2, 3]')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_precision
  def test_get_precision()

    # Perform the API call through the SDK function
    result = self.class.controller.get_precision()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal('4.999', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_binary
  def test_get_binary()

    # Perform the API call through the SDK function
    result = self.class.controller.get_binary()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal(TestHelper.get_file('https://dl.dropboxusercontent.com/u/31838656/binary.png').read(), @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_integer
  def test_get_integer()

    # Perform the API call through the SDK function
    result = self.class.controller.get_integer()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal('4', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_integer_array
  def test_get_integer_array()

    # Perform the API call through the SDK function
    result = self.class.controller.get_integer_array()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('[1,2,3,4,5]')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_dynamic
  def test_get_dynamic()

    # Perform the API call through the SDK function
    result = self.class.controller.get_dynamic()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"method":"GET","body":{},"uploadCount":0}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_get_dynamic_array
  def test_get_dynamic_array()

    # Perform the API call through the SDK function
    result = self.class.controller.get_dynamic_array()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('{"method":"GET","body":{},"uploadCount":0}')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body, check_values: true))
  end

  # Todo: Add description for test test_get_datetime
  def test_get_datetime()

    # Perform the API call through the SDK function
    result = self.class.controller.get_datetime()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal('2016-03-13T12:52:32.123Z', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_datetime_array
  def test_get_datetime_array()

    # Perform the API call through the SDK function
    result = self.class.controller.get_datetime_array()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('["2016-03-13T12:52:32.123Z","2016-03-13T12:52:32.123Z","2016-03-13T12:52:32.123Z"]')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_boolean
  def test_get_boolean()

    # Perform the API call through the SDK function
    result = self.class.controller.get_boolean()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    assert_equal('true', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_get_boolean_array
  def test_get_boolean_array()

    # Perform the API call through the SDK function
    result = self.class.controller.get_boolean_array()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test whether the captured response is as we expected
    assert_not_nil(result)
    expected_body = JSON.parse('[true, false, true, true, false]')
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(TestHelper.match_body(expected_body, received_body))
  end

  # Todo: Add description for test test_get_headers_allow_extra
  def test_get_headers_allow_extra()

    # Perform the API call through the SDK function
    self.class.controller.get_headers()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['naumanali'] = nil
    expected_headers['waseemhasan'] = nil

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end
