module Rabbitmq::Extractors
  def initialize(payload)
    @payload = JSON.parse(payload).with_indifferent_access
    @schema = schema
  end

  class << self
    def included(base)
      attr_reader :payload
    end
  end

  def validate_schema!
    return JSON::Validator.validate!(@schema, @payload)
  end

  def schema
    raise NotImplementedError.new
  end

  def extract
    raise NotImplementedError.new
  end

end
