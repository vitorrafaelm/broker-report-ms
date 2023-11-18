class Rabbitmq::Broker
  include Singleton

  attr_reader :connection

  def initialize
    @connection = setup

    begin
      @connection.start
    rescue Bunny::ConnectionTimeout, Bunny::TCPConnectionFailed => error
      Rails.logger.tagged(error.class) { Rails.logger.error(error.message) }
    end
  end

  def close
    return @connection.close
  end

  def setup(connection_name = 'Bunny')
    connection_name = "Broker Utilities #{connection_name} #{rand}"

    return Bunny.new(
      connection_timeout: 2,
      automatically_recover: true,
      port: ENV['BUNNY_AMQP_PORT'],
      vhost: ENV['BUNNY_AMQP_VHOST'],
      username: ENV['BUNNY_AMQP_USER'],
      password: ENV['BUNNY_AMQP_PASSWORD'],
      addresses: ENV['BUNNY_AMQP_ADDRESSES'],
      connection_name: connection_name,
      client_properties: { connection_name: connection_name }
    )
  end
end
