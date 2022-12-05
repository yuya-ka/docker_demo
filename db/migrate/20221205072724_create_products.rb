class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title,   null: false
      t.integer :money,  null: false
      t.text :content,   null: false
      t.timestamps
    end
  end
end
