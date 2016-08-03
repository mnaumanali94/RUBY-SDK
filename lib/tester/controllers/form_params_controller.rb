# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

module Tester
  class FormParamsController < BaseController
    @@instance = FormParamsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # TODO: type endpoint description here
    # @param [Long] value Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_long(value)

      # Validate required parameters
      if value == nil
        raise ArgumentError.new "Required parameter 'value' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/number'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # prepare parameters
      _parameters = {
        'value' => value
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Integer] integers Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_integer_array(integers)

      # Validate required parameters
      if integers == nil
        raise ArgumentError.new "Required parameter 'integers' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/number'

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

      # prepare parameters
      _parameters = {
        'integers' => integers
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of String] strings Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_string_array(strings)

      # Validate required parameters
      if strings == nil
        raise ArgumentError.new "Required parameter 'strings' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/string'

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

      # prepare parameters
      _parameters = {
        'strings' => strings
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [Employee] model Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_model(model)

      # Validate required parameters
      if model == nil
        raise ArgumentError.new "Required parameter 'model' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/model'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # prepare parameters
      _parameters = {
        'model' => model
      }

      # Form encode parameters.
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Employee] models Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_model_array(models)

      # Validate required parameters
      if models == nil
        raise ArgumentError.new "Required parameter 'models' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/model'

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

      # prepare parameters
      _parameters = {
        'models' => models
      }

      # Form encode parameters.
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [File] file Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_file(file)

      # Validate required parameters
      if file == nil
        raise ArgumentError.new "Required parameter 'file' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/file'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # prepare parameters
      _parameters = {
        'file' => file
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end

    # Send a variety for form params. Returns file count and body params
    # @param [File] file Required parameter: Example: 
    # @param [List of Integer] integers Required parameter: Example: 
    # @param [List of Employee] models Required parameter: Example: 
    # @param [List of String] strings Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_mixed_array(options=Hash.new)

      # Validate required parameters
      if options['file'] == nil
        raise ArgumentError.new "Required parameter 'file' cannot be nil."
      elsif options['integers'] == nil
        raise ArgumentError.new "Required parameter 'integers' cannot be nil."
      elsif options['models'] == nil
        raise ArgumentError.new "Required parameter 'models' cannot be nil."
      elsif options['strings'] == nil
        raise ArgumentError.new "Required parameter 'strings' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/mixed'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # prepare parameters
      _parameters = {
        'file' => options['file'],
        'integers' => options['integers'],
        'models' => options['models'],
        'strings' => options['strings']
      }

      # Form encode parameters.
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] value Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_string(value)

      # Validate required parameters
      if value == nil
        raise ArgumentError.new "Required parameter 'value' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/string'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json'
      }

      # prepare parameters
      _parameters = {
        'value' => value
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of SuiteCode] suites Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_integer_enum_array(suites)

      # Validate required parameters
      if suites == nil
        raise ArgumentError.new "Required parameter 'suites' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/integerenum'

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

      # prepare parameters
      _parameters = {
        'suites' => suites
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Days] days Required parameter: Example: 
    # @return ServerResponse response from the API call
    def send_string_enum_array(days)

      # Validate required parameters
      if days == nil
        raise ArgumentError.new "Required parameter 'days' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/form/stringenum'

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

      # prepare parameters
      _parameters = {
        'days' => days
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: _parameters
      
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
      return ServerResponse.from_hash(decoded)
    end
  end
end
