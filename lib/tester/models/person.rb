# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

module Tester
  class Person

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :age

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    def initialize(address = nil,
                   age = nil,
                   name = nil,
                   uid = nil)
      @address = address
      @age = age
      @name = name
      @uid = uid

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
        address = hash["address"]
        age = hash["age"]
        name = hash["name"]
        uid = hash["uid"]
        # Create object from extracted values
        Person.new(address,
                   age,
                   name,
                   uid)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['address'] = address
      hash['age'] = age
      hash['name'] = name
      hash['uid'] = uid
      hash
    end
  end
end
