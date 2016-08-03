# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

module Tester
  class TesterClient
    # Singleton access to response_types controller
    # @return [ResponseTypesController] Returns the controller instance
    def response_types
      ResponseTypesController.instance
    end

    # Singleton access to error_codes controller
    # @return [ErrorCodesController] Returns the controller instance
    def error_codes
      ErrorCodesController.instance
    end

    # Singleton access to body_params controller
    # @return [BodyParamsController] Returns the controller instance
    def body_params
      BodyParamsController.instance
    end

    # Singleton access to form_params controller
    # @return [FormParamsController] Returns the controller instance
    def form_params
      FormParamsController.instance
    end

    # Singleton access to echo controller
    # @return [EchoController] Returns the controller instance
    def echo
      EchoController.instance
    end

    # Singleton access to header controller
    # @return [HeaderController] Returns the controller instance
    def header
      HeaderController.instance
    end

    # Singleton access to query_param controller
    # @return [QueryParamController] Returns the controller instance
    def query_param
      QueryParamController.instance
    end

    # Singleton access to template_params controller
    # @return [TemplateParamsController] Returns the controller instance
    def template_params
      TemplateParamsController.instance
    end

  end
end
