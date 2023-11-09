class Broker < ApplicationRecord
    validates_presence_of :name, :identifier, :email, :password, :document_type,
        :document_number, :broker_identifier

    has_many :properties, class_name: "Property", foreign_key: "broker_identifier"
    has_one :address, class_name: "Address", foreign_key: "broker_identifier"

    validates_uniqueness_of :identifier
end
