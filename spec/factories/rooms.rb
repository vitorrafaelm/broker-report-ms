FactoryBot.define do
  factory :room do
    property_identifier { "MyString" }
    room_name { "MyString" }
    room_width { "9.99" }
    room_length { "9.99" }
    room_description { "MyText" }
    room_observations { "MyText" }
  end
end
