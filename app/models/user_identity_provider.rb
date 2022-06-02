class UserIdentityProvider < ApplicationRecord
  enum identity_type: %i[ google apple facebook ]

  # relations
  belongs_to :users, class_name: :users, foreign_key: :user_id

  # validation
  validates :firebase_uid, uniqueness: { scope: :identity_type }
  validates :identity_type, uniqueness: { scope: :user_id }

  # firebase auth use: 
  # google.com, apple.com, facebook.com, ...
  def provider_name
    "#{identity_type}.com"
  end
end
