# This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'person'

module Tester
  class Employee < Person 

    # TODO: Write general description for this method
    # @return [Person]
    attr_accessor :boss

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :department

    # TODO: Write general description for this method
    # @return [List of Person]
    attr_accessor :dependents

    # TODO: Write general description for this method
    # @return [Days]
    attr_accessor :joining_day

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :salary

    # TODO: Write general description for this method
    # @return [List of Days]
    attr_accessor :working_days

    def initialize(address = nil,
                   age = nil,
                   boss = nil,
                   department = nil,
                   dependents = nil,
                   joining_day = Days::MONDAY,
                   name = nil,
                   salary = nil,
                   uid = nil,
                   working_days = nil)
      @boss = boss
      @department = department
      @dependents = dependents
      @joining_day = joining_day
      @salary = salary
      @working_days = working_days

      # Call the constructor for the base class
      super(address,
            age,
            name,
            uid)

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
        boss = Person.from_hash(hash["boss"]) if hash["boss"]
        department = hash["department"]
        # Parameter is an array, so we need to iterate through it
        dependents = nil
        if hash["dependents"] != nil
          dependents = Array.new
          hash["dependents"].each{|structure| dependents << (Person.from_hash(structure) if structure)}
        end
        joining_day = hash["joiningDay"] ||= Days::MONDAY
        name = hash["name"]
        salary = hash["salary"]
        uid = hash["uid"]
        working_days = hash["workingDays"]
        # Create object from extracted values
        Employee.new(address,
                     age,
                     boss,
                     department,
                     dependents,
                     joining_day,
                     name,
                     salary,
                     uid,
                     working_days)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['boss'] = boss ? boss.key_map : nil
      hash['department'] = department
      hash['dependents'] = dependents ? dependents.map(&:key_map) : nil
      hash['joiningDay'] = joining_day
      hash['salary'] = salary
      hash['workingDays'] = working_days
      hash = super().merge(hash) 
      hash
    end
  end
end
