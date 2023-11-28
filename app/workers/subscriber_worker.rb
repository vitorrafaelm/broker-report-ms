class SubscriberWorker
  include Sidekiq::Worker

  sidekiq_options queue: 'subscriber_safeguard'

  def perform(event_type, message)
    Rabbitmq::Subscriber.new(event_type: event_type, message: message).execute
  end
end
