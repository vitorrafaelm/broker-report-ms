class Rabbitmq::Subscribers::Actions::BrokerCreated
  def initialize(payload)
    @payload = payload
  end

  def execute
    puts payload
  end

end
