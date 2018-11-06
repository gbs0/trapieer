class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.string :category
      t.string :origin
      t.integer :quantity
      t.integer :price
      t.text :description
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
