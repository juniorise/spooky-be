class CreateUserIdentityProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :user_identity_providers do |t|
      t.integer :identity_type
      t.integer :user_id
      t.string :email
      t.string :firebase_uid

      t.timestamps
    end

    add_index :user_identity_providers, [:user_id, :identity_type], unique: true
    add_index :user_identity_providers, [:firebase_uid, :identity_type], unique: true
    add_foreign_key :user_identity_providers, :users, column: :user_id
  end
end
