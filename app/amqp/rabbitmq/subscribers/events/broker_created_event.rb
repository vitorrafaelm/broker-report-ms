class Rabbitmq::Subscribers::Events::BrokerCreatedEvent
  include ::Sneakers::Worker

  from_queue "broker_created"

  def work_with_params(payload, delivery_info, metadata)
    begin
      Rabbitmq::Subscribers::Extractors::BrokerCreatedExtractor.new(payload).validate_schema!
      SubscriberWorker.perform_async('broker_created', payload)
      return ack!
    rescue JSON::Schema::ValidationError => error
      return reject!
    end
  end

end
