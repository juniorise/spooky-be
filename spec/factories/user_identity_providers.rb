FactoryBot.define do
  factory :user_identity_provider do
    user_id { 1 }
    identity_type { "MyString" }
    firebase_uid { "MyString" }
  end
end
