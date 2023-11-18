Rails.application.config.to_prepare do
  Sneakers.configure(
    connection: Rabbitmq::Broker.instance.setup("Configuration System Sneakers"),
    workers: 4
  )

  Sneakers.logger.level = Logger::INFO
end
