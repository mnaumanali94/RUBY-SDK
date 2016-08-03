# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

module Tester
  class ServerResponse

    # TODO: Write general description for this method
    # @return [Array<String, Object>]
    attr_accessor :input

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :passed

    def initialize(input = nil,
                   message = nil,
                   passed = nil)
      @input = input
      @message = message
      @passed = passed

    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        input = hash["input"]
        message = hash["Message"]
        passed = hash["passed"]
        # Create object from extracted values
        ServerResponse.new(input,
                           message,
                           passed)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['input'] = input
      hash['Message'] = message
      hash['passed'] = passed
      hash
    end
  end
end
