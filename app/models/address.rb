class Address < ApplicationRecord
    belongs_to :broker, class_name: "Broker", foreign_key: 'broker_identifier'
end
