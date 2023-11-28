class Rabbitmq::Subscribers::Events::BrokerUpdatedEvent
  include ::Sneakers::Worker

  from_queue "broker_updated"

  def work_with_params(payload, delivery_info, metadata)
    return ack!
  end

end
