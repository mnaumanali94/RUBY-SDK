# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

module Tester
  class BaseController
    attr_accessor :http_client, :http_call_back

    @@http_client = UnirestClient.new

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client ||= @@http_client
      @http_call_back = http_call_back
    end

    def validate_response(response)			
      if response.status_code == 400
        raise APIException.new "400 Global", response.status_code, response.raw_body
      elsif response.status_code == 500
        raise APIException.new "500 Global", response.status_code, response.raw_body
      elsif !response.status_code.between?(200, 208) #[200,208] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.status_code, response.raw_body
      end
    end
  end
end