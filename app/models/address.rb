class Address < ApplicationRecord
    validates_presence_of :address_line_one, :address_line_two, :zipcode, :city, :state, :country

    belongs_to :broker, class_name: "Broker", foreign_key: 'broker_identifier', optional: true
    belongs_to :client, class_name: "Client", foreign_key: "client_identifier", optional: true
    belongs_to :property, class_name: "Property", foreign_key: "propertie_identifier", optional: true
end
