FactoryBot.define do
  factory :broker do
    identifier { "MyString" }
    name { "MyString" }
    email { "MyString" }
    password { "MyString" }
    document_type { "MyString" }
    document_number { "MyString" }
    broker_identifier { "MyString" }
    profile_picture { "MyText" }
    account_status { "MyString" }
  end
end
