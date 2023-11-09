class Client < ApplicationRecord
    validates_presence_of :client_identifier, :full_name, :document_type, :document_number, :email,
    :phone

    has_many :propertie, class_name: "Property", foreign_key: "client_owner"
    has_one :address, class_name: "Address", foreign_key: "client_identifier"

    validates_uniqueness_of :client_identifier

end
