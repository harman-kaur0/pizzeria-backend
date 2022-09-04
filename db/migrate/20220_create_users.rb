class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :address
      t.text :email
      t.text :phone_number
      t.text :username
      t.text :password_digest
      t.text :credit_card_number
      t.text :cart, array: true

      t.timestamps
    end
  end
end
