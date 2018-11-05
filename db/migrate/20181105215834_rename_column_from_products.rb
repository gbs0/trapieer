class RenameColumnFromProducts < ActiveRecord::Migration[5.2]
  def change
    change_table :products do |t|
      t.rename :user_id, :seller_id
    end
  end
end
