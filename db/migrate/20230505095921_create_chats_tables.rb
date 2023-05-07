class CreateChatsTables < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile_picture
      t.string :contact
      t.string :password_digest
      t.string :status

      t.timestamps
    end

    create_table :messages do |t|
      t.string :from_user_id
      t.string :to_user_id
      t.string :message
      t.string :status

      t.timestamps
    end
  end
end
