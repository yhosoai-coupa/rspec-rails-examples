class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email, limit: 100, null: false
      t.string :confirmation_token, limit: 100, null: false
      t.boolean :confirmed, default: false, null: false

      t.timestamps null: false
    end
    add_index :subscriptions, :email, unique: true
    add_index :subscriptions, :confirmation_token, unique: true
  end
end
