# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

module Tester
  class HeaderController < BaseController
    @@instance = HeaderController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Sends a single header params
    # @param [String] custom_header Required parameter: Example: 
    # @param [String] value Required parameter: Represents the value of the custom header
    # @return ServerResponse response from the API call
    def send_headers(custom_header, 
                     value)

      # Validate required parameters
      if custom_header == nil
        raise ArgumentError.new "Required parameter 'custom_header' cannot be nil."
      elsif value == nil
        raise ArgumentError.new "Required parameter 'value' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/header'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'Stamplay SDK',
        'accept' => 'application/json',
        'custom-header' => custom_header
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
  end
end
