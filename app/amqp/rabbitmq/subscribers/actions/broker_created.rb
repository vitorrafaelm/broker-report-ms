class Rabbitmq::Subscribers::Actions::BrokerCreated
  def initialize(payload)
    @payload = payload
  end

  def execute
    begin
      broker = {
        :name => @payload[:name],
        :identifier => @payload[:broker_identifier],
        :email => @payload[:email],
        :password => @payload[:password],
        :document_type => @payload[:document_type],
        :document_number => @payload[:document_number],
        :broker_identifier => @payload[:broker_identifier]
      }

      Broker.create!(broker)
      Rails.logger.tagged(self.class) { Rails.logger.info("Successful user created: #{@payload}") }
    rescue ActiveRecord::RecordInvalid => error
      if error.record.errors[:identifier]
        Rails.logger.tagged(error.class) { Rails.logger.error('Invalid Record Error') }
      end
    rescue ActiveRecord::RecordNotFound => error
      Rails.logger.tagged(error.class) { Rails.logger.error(error.message) }
    rescue StandardError => error
      Rails.logger.tagged(error.class) { Rails.logger.error(error.message) }
      raise error
    end
  end
end
