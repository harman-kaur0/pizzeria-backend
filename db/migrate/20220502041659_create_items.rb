class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.text :name
      t.text :ingredients, array: true, default: []
      t.json :price
      t.text :image
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
