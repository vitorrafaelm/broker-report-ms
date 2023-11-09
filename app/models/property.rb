class Property < ApplicationRecord
  validates_presence_of :broker_identifier, :client_owner, :rooms_quantity, :informations

  has_one :address, class_name: "Address", foreign_key: "propertie_identifier"
  has_one :broker, class_name: "Broker", foreign_key: "identifier"
  has_one :client, class_name: "Client", foreign_key: "client_identifier"

  has_many :rooms, class_name: "Room", foreign_key: "property_identifier"

end
