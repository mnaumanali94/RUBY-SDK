# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).
require 'openssl'
require 'json'
require 'unirest'

# APIMATIC Helper Files
require_relative 'tester/api_helper.rb'
require_relative 'tester/api_exception.rb'
require_relative 'tester/configuration.rb'
require_relative 'tester/tester_client.rb'

# Http
require_relative 'tester/http/http_call_back.rb'
require_relative 'tester/http/http_client.rb'
require_relative 'tester/http/http_method_enum.rb'
require_relative 'tester/http/http_request.rb'
require_relative 'tester/http/http_response.rb'
require_relative 'tester/http/unirest_client.rb'

# Models
require_relative 'tester/models/server_response.rb'
require_relative 'tester/models/echo_response.rb'
require_relative 'tester/models/person.rb'
require_relative 'tester/models/days.rb'
require_relative 'tester/models/suite_code.rb'
require_relative 'tester/models/employee.rb'

# Controllers
require_relative 'tester/controllers/base_controller.rb'
require_relative 'tester/controllers/response_types_controller.rb'
require_relative 'tester/controllers/error_codes_controller.rb'
require_relative 'tester/controllers/body_params_controller.rb'
require_relative 'tester/controllers/form_params_controller.rb'
require_relative 'tester/controllers/echo_controller.rb'
require_relative 'tester/controllers/header_controller.rb'
require_relative 'tester/controllers/query_param_controller.rb'
require_relative 'tester/controllers/template_params_controller.rb'
