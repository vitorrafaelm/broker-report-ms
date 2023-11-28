class Rabbitmq::Subscriber
  def initialize(event_type:, message:)
    @event_type = event_type
    @payload = extract(message: message)
  end

  def execute
    return strategy.execute
  end

  private

  def strategy
    strategy = "Rabbitmq::Subscribers::Actions::#{klass_name}".safe_constantize
    return strategy.new(@payload)
  end

  def extract(message:)
    extractor = "Rabbitmq::Subscribers::Extractors::#{klass_name}Extractor".safe_constantize
    return extractor.new(message).extract
  end

  def klass_name
    return @event_type.to_s.camelize
  end
end
