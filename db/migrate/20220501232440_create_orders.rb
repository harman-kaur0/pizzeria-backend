class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.text :items, array: true, default: []

      t.timestamps
    end
  end
end
