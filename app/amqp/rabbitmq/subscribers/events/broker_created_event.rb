class Rabbitmq::Subscribers::Events::BrokerCreatedEvent
  include ::Sneakers::Worker

  from_queue "user_created"

  def work_with_params(payload, delivery_info, metadata)
    puts payload
  end

end
