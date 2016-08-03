# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

module Tester
  class TemplateParamsController < BaseController
    @@instance = TemplateParamsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # TODO: type endpoint description here
    # @param [List of String] strings Required parameter: Example: 
    # @return EchoResponse response from the API call
    def send_string_array(strings)

      # Validate required parameters
      if strings == nil
        raise ArgumentError.new "Required parameter 'strings' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/{strings}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'strings' => strings
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
      return EchoResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [List of Integer] integers Required parameter: Example: 
    # @return EchoResponse response from the API call
    def send_integer_array(integers)

      # Validate required parameters
      if integers == nil
        raise ArgumentError.new "Required parameter 'integers' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/{integers}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'integers' => integers
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
      return EchoResponse.from_hash(decoded)
    end
  end
end
