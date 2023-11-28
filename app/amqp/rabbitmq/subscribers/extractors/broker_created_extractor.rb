class Rabbitmq::Subscribers::Extractors::BrokerCreatedExtractor
  include Rabbitmq::Extractors

  User = Struct.new(
    :name,
    :identifier,
    :email,
    :password,
    :document_type,
    :document_number,
    :broker_identifier,
    :account_status
  )

  def schema
    return {
      'type' => 'object',
      'properties' => {
        'name' => { 'type' => %w[string null] },
        'identifier' => { 'type' => %w[string null] },
        'email' => { 'type' => %w[string null] },
        'password' => { 'type' => %w[string null] },
        'document_type' => { 'type' => %w[string null] },
        'document_number' => { 'type' => %w[string null] },
        'broker_identifier' => { 'type' => %w[string null] },
        'account_status' => { 'type' => %w[string null] },
      }
    }
  end

  def extract
    user = payload

    structured_user = User.new(
      name: user['name'],
      identifier: user['identifier'],
      email: user['email'],
      password: user['password'],
      document_type: user['document_type'],
      document_number: user['document_number'],
      broker_identifier: user['broker_identifier'],
      account_status: user['account_status']
      )

    return structured_user.to_h
  end
end
