class SubscriberWorker
  include Sidekiq::Worker

  sidekiq_options queue: 'subscriber_safeguard'

  def perform(message)
    puts 'chegou aqui no perform ------------------------------------------------------'
    Rabbitmq::Subscribers::Actions::BrokerCreated.new(message).execute
  end
end
