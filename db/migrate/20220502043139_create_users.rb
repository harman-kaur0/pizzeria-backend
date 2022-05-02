class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :email
      t.string :phone_number
      t.string :username
      t.string :password_digest
      t.string :credit_card_number
      t.text :cart, array: true

      t.timestamps
    end
  end
end
