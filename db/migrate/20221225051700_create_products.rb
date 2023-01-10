class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name,         null: false
      t.string :city,         null: false
      t.integer :price,       null: false
      t.text :content,        null: false
      t.references :category, null: false
      t.timestamps
    end
  end
end