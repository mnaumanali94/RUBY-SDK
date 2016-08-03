# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

module Tester
  class EchoResponse

    # TODO: Write general description for this method
    # @return [Array<String, Object>]
    attr_accessor :body

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :headers

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :method

    # relativePath
    # @return [String]
    attr_accessor :path

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :query

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :upload_count

    def initialize(body = nil,
                   headers = nil,
                   method = nil,
                   path = nil,
                   query = nil,
                   upload_count = nil)
      @body = body
      @headers = headers
      @method = method
      @path = path
      @query = query
      @upload_count = upload_count

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
        body = hash["body"]
        headers = hash["headers"]
        method = hash["method"]
        path = hash["path"]
        query = hash["query"]
        upload_count = hash["uploadCount"]
        # Create object from extracted values
        EchoResponse.new(body,
                         headers,
                         method,
                         path,
                         query,
                         upload_count)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['body'] = body
      hash['headers'] = headers
      hash['method'] = method
      hash['path'] = path
      hash['query'] = query
      hash['uploadCount'] = upload_count
      hash
    end
  end
end
