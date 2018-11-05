class RenameColumnFromTransactions < ActiveRecord::Migration[5.2]
  def change
    change_table :transactions do |t|
      t.rename :user_id, :buyer_id
    end
  end
end
