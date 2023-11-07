class Broker < ApplicationRecord
    validates_presence_of :name, :identifier, :email, :password, :document_type, 
        :document_number, :broker_identifier
end
