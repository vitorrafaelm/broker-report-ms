class Image < ApplicationRecord

  validates_presence_of :room_identifier, :url, :description

  has_one :room, class_name: "Property", foreign_key: 'id'
end
