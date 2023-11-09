class Room < ApplicationRecord

  validates_presence_of :property_identifier, :room_name, :room_width, :room_length, :room_description, :room_observations

  has_many :images, class_name: "Image", foreign_key: "room_identifier"
  has_one :propertie, class_name: "Property", foreign_key: 'id'
end
