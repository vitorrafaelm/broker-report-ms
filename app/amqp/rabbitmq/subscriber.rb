class Rabbitmq::Subscriber
  def initialize(event_type:, message:)
    @event_type = event_type
    @payload = message
  end

  def execute
    return nil
  end

  private

  def strategy
    return nil
  end

end
