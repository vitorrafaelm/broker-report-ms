FactoryBot.define do
  factory :address do
    broker_identifier { "MyString" }
    client_identifier { "MyString" }
    propertie_identifier { "MyString" }
    address_line_one { "MyString" }
    address_line_two { "MyString" }
    zipcode { "MyString" }
    city { "MyString" }
    state { "MyString" }
    country { "MyString" }
  end
end
