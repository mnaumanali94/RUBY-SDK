# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'

module Tester
  class ResponseTypesController < BaseController
    @@instance = ResponseTypesController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # TODO: type endpoint description here
    # @return Long response from the API call
    def get_long
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/long'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      return _response.raw_body.to_i
    end

    # TODO: type endpoint description here
    # @return Employee response from the API call
    def get_model
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/model'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return Employee.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @return List of Days response from the API call
    def get_string_enum_array
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/enum'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'array' => true,
        'type' => 'string'
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return decoded
    end

    # TODO: type endpoint description here
    # @return Days response from the API call
    def get_string_enum
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/enum'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'type' => 'string'
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      return _response.raw_body
    end

    # TODO: type endpoint description here
    # @return List of Employee response from the API call
    def get_model_array
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/model'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'array' => true
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return decoded.map{|element| Employee.from_hash(element)}
    end

    # TODO: type endpoint description here
    # @return SuiteCode response from the API call
    def get_int_enum
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/enum'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'type' => 'int'
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      return _response.raw_body.to_i
    end

    # TODO: type endpoint description here
    # @return List of SuiteCode response from the API call
    def get_int_enum_array
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/enum'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'array' => true,
        'type' => 'int'
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return decoded
    end

    # TODO: type endpoint description here
    # @return Float response from the API call
    def get_precision
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/precision'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      return _response.raw_body.to_f
    end

    # gets a binary object
    # @return Binary response from the API call
    def get_binary
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/binary'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the binary response
      _response = @http_client.execute_as_binary(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      return _response.raw_body
    end

    # Gets a integer response
    # @return Integer response from the API call
    def get_integer
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/integer'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      return _response.raw_body.to_i
    end

    # Get an array of integers.
    # @return List of Integer response from the API call
    def get_integer_array
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/integer'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'array' => true
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return decoded
    end

    # TODO: type endpoint description here
    # @return Mixed response from the API call
    def get_dynamic
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/dynamic'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body) if not (_response.raw_body.nil? or _response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # TODO: type endpoint description here
    # @return Mixed response from the API call
    def get_dynamic_array
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/dynamic'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'array' => true
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body) if not (_response.raw_body.nil? or _response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # TODO: type endpoint description here
    # @return DateTime response from the API call
    def get_datetime
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/datetime'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      return DateTime.iso8601(_response.raw_body)
    end

    # TODO: type endpoint description here
    # @return List of DateTime response from the API call
    def get_datetime_array
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/datetime'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'array' => true
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return decoded.map{|element| DateTime.iso8601(element)}
    end

    # TODO: type endpoint description here
    # @return Boolean response from the API call
    def get_boolean
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/boolean'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      return _response.raw_body.to_bool
    end

    # TODO: type endpoint description here
    # @return List of Boolean response from the API call
    def get_boolean_array
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/boolean'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'array' => true
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Endpoint error handling using HTTP status codes.
      if _response.status_code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return decoded
    end

    # TODO: type endpoint description here
    # @return void response from the API call
    def get_headers
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/response/headers'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK'
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_response)
    end
  end
end
